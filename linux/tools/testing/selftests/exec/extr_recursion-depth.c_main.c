
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLONE_NEWNS ;
 scalar_t__ ELOOP ;
 scalar_t__ ENOSYS ;
 scalar_t__ EPERM ;
 int FILENAME ;
 int MS_PRIVATE ;
 int MS_REC ;
 int S ;
 int close (int) ;
 int creat (int ,int) ;
 scalar_t__ errno ;
 int execve (int ,int *,int *) ;
 int fprintf (int ,char*,int,...) ;
 int mount (int *,char*,char*,int,int *) ;
 int stderr ;
 scalar_t__ strlen (int ) ;
 int unshare (int ) ;
 scalar_t__ write (int,int ,scalar_t__) ;

int main(void)
{
 if (unshare(CLONE_NEWNS) == -1) {
  if (errno == ENOSYS || errno == EPERM) {
   fprintf(stderr, "error: unshare, errno %d\n", errno);
   return 4;
  }
  fprintf(stderr, "error: unshare, errno %d\n", errno);
  return 1;
 }
 if (mount(((void*)0), "/", ((void*)0), MS_PRIVATE|MS_REC, ((void*)0)) == -1) {
  fprintf(stderr, "error: mount '/', errno %d\n", errno);
  return 1;
 }

 if (mount(((void*)0), "/tmp", "ramfs", 0, ((void*)0)) == -1) {
  fprintf(stderr, "error: mount ramfs, errno %d\n", errno);
  return 1;
 }



 int fd = creat("/tmp/1", 0700);
 if (fd == -1) {
  fprintf(stderr, "error: creat, errno %d\n", errno);
  return 1;
 }

 if (write(fd, "#!" "/tmp/1" "\n", strlen("#!" "/tmp/1" "\n")) != strlen("#!" "/tmp/1" "\n")) {
  fprintf(stderr, "error: write, errno %d\n", errno);
  return 1;
 }
 close(fd);

 int rv = execve("/tmp/1", ((void*)0), ((void*)0));
 if (rv == -1 && errno == ELOOP) {
  return 0;
 }
 fprintf(stderr, "error: execve, rv %d, errno %d\n", rv, errno);
 return 1;
}
