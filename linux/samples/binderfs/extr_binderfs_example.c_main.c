
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binderfs_device {char* name; int major; int minor; int member_0; } ;


 int BINDER_CTL_ADD ;
 int CLONE_NEWNS ;
 int EEXIST ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int MS_PRIVATE ;
 int MS_REC ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int ioctl (int,int ,struct binderfs_device*) ;
 int memcpy (char*,char*,int ) ;
 int mkdir (char*,int) ;
 int mount (int *,char*,char*,int,int ) ;
 int open (char*,int) ;
 int printf (char*,int,int,char*) ;
 int stderr ;
 char* strerror (int) ;
 int strlen (char*) ;
 int unlink (char*) ;
 int unshare (int ) ;

int main(int argc, char *argv[])
{
 int fd, ret, saved_errno;
 size_t len;
 struct binderfs_device device = { 0 };

 ret = unshare(CLONE_NEWNS);
 if (ret < 0) {
  fprintf(stderr, "%s - Failed to unshare mount namespace\n",
   strerror(errno));
  exit(EXIT_FAILURE);
 }

 ret = mount(((void*)0), "/", ((void*)0), MS_REC | MS_PRIVATE, 0);
 if (ret < 0) {
  fprintf(stderr, "%s - Failed to mount / as private\n",
   strerror(errno));
  exit(EXIT_FAILURE);
 }

 ret = mkdir("/dev/binderfs", 0755);
 if (ret < 0 && errno != EEXIST) {
  fprintf(stderr, "%s - Failed to create binderfs mountpoint\n",
   strerror(errno));
  exit(EXIT_FAILURE);
 }

 ret = mount(((void*)0), "/dev/binderfs", "binder", 0, 0);
 if (ret < 0) {
  fprintf(stderr, "%s - Failed to mount binderfs\n",
   strerror(errno));
  exit(EXIT_FAILURE);
 }

 memcpy(device.name, "my-binder", strlen("my-binder"));

 fd = open("/dev/binderfs/binder-control", O_RDONLY | O_CLOEXEC);
 if (fd < 0) {
  fprintf(stderr, "%s - Failed to open binder-control device\n",
   strerror(errno));
  exit(EXIT_FAILURE);
 }

 ret = ioctl(fd, BINDER_CTL_ADD, &device);
 saved_errno = errno;
 close(fd);
 errno = saved_errno;
 if (ret < 0) {
  fprintf(stderr, "%s - Failed to allocate new binder device\n",
   strerror(errno));
  exit(EXIT_FAILURE);
 }

 printf("Allocated new binder device with major %d, minor %d, and name %s\n",
        device.major, device.minor, device.name);

 ret = unlink("/dev/binderfs/my-binder");
 if (ret < 0) {
  fprintf(stderr, "%s - Failed to delete binder device\n",
   strerror(errno));
  exit(EXIT_FAILURE);
 }


 exit(EXIT_SUCCESS);
}
