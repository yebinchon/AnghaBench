
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int target ;
struct seccomp_notif_resp {int error; scalar_t__ val; int id; } ;
struct TYPE_2__ {scalar_t__ nr; int* args; } ;
struct seccomp_notif {int pid; TYPE_1__ data; int id; } ;
typedef int source ;
typedef int path ;


 int EPERM ;
 int MS_BIND ;
 int O_RDONLY ;
 int PATH_MAX ;
 int SECCOMP_IOCTL_NOTIF_ID_VALID ;
 int SEEK_SET ;
 scalar_t__ __NR_mount ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ ioctl (int,int ,int *) ;
 scalar_t__ lseek (int,int,int ) ;
 scalar_t__ mount (char*,char*,int *,int,int *) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int read (int,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int stderr ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int handle_req(struct seccomp_notif *req,
        struct seccomp_notif_resp *resp, int listener)
{
 char path[PATH_MAX], source[PATH_MAX], target[PATH_MAX];
 int ret = -1, mem;

 resp->id = req->id;
 resp->error = -EPERM;
 resp->val = 0;

 if (req->data.nr != __NR_mount) {
  fprintf(stderr, "huh? trapped something besides mount? %d\n", req->data.nr);
  return -1;
 }


 if (!(req->data.args[3] & MS_BIND))
  return 0;





 snprintf(path, sizeof(path), "/proc/%d/mem", req->pid);
 mem = open(path, O_RDONLY);
 if (mem < 0) {
  perror("open mem");
  return -1;
 }
 if (ioctl(listener, SECCOMP_IOCTL_NOTIF_ID_VALID, &req->id) < 0) {
  fprintf(stderr, "task died before we could map its memory\n");
  goto out;
 }






 if (lseek(mem, req->data.args[0], SEEK_SET) < 0) {
  perror("seek");
  goto out;
 }

 ret = read(mem, source, sizeof(source));
 if (ret < 0) {
  perror("read");
  goto out;
 }

 if (lseek(mem, req->data.args[1], SEEK_SET) < 0) {
  perror("seek");
  goto out;
 }

 ret = read(mem, target, sizeof(target));
 if (ret < 0) {
  perror("read");
  goto out;
 }






 if (!strncmp(source, "/tmp/", 5) && !strncmp(target, "/tmp/", 5)) {
  if (mount(source, target, ((void*)0), req->data.args[3], ((void*)0)) < 0) {
   ret = -1;
   perror("actual mount");
   goto out;
  }
  resp->error = 0;
 }




 ret = 0;

out:
 close(mem);
 return ret;
}
