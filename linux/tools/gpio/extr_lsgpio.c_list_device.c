
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioline_info {char* name; char* label; int lines; int line_offset; char* consumer; scalar_t__ flags; } ;
struct gpiochip_info {char* name; char* label; int lines; int line_offset; char* consumer; scalar_t__ flags; } ;
typedef int linfo ;


 int ENOMEM ;
 int GPIO_GET_CHIPINFO_IOCTL ;
 int GPIO_GET_LINEINFO_IOCTL ;
 int asprintf (char**,char*,char const*) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int ioctl (int,int ,struct gpioline_info*) ;
 int memset (struct gpioline_info*,int ,int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int print_flags (scalar_t__) ;
 int stderr ;
 int stdout ;

int list_device(const char *device_name)
{
 struct gpiochip_info cinfo;
 char *chrdev_name;
 int fd;
 int ret;
 int i;

 ret = asprintf(&chrdev_name, "/dev/%s", device_name);
 if (ret < 0)
  return -ENOMEM;

 fd = open(chrdev_name, 0);
 if (fd == -1) {
  ret = -errno;
  fprintf(stderr, "Failed to open %s\n", chrdev_name);
  goto exit_close_error;
 }


 ret = ioctl(fd, GPIO_GET_CHIPINFO_IOCTL, &cinfo);
 if (ret == -1) {
  ret = -errno;
  perror("Failed to issue CHIPINFO IOCTL\n");
  goto exit_close_error;
 }
 fprintf(stdout, "GPIO chip: %s, \"%s\", %u GPIO lines\n",
  cinfo.name, cinfo.label, cinfo.lines);


 for (i = 0; i < cinfo.lines; i++) {
  struct gpioline_info linfo;

  memset(&linfo, 0, sizeof(linfo));
  linfo.line_offset = i;

  ret = ioctl(fd, GPIO_GET_LINEINFO_IOCTL, &linfo);
  if (ret == -1) {
   ret = -errno;
   perror("Failed to issue LINEINFO IOCTL\n");
   goto exit_close_error;
  }
  fprintf(stdout, "\tline %2d:", linfo.line_offset);
  if (linfo.name[0])
   fprintf(stdout, " \"%s\"", linfo.name);
  else
   fprintf(stdout, " unnamed");
  if (linfo.consumer[0])
   fprintf(stdout, " \"%s\"", linfo.consumer);
  else
   fprintf(stdout, " unused");
  if (linfo.flags) {
   fprintf(stdout, " [");
   print_flags(linfo.flags);
   fprintf(stdout, "]");
  }
  fprintf(stdout, "\n");

 }

exit_close_error:
 if (close(fd) == -1)
  perror("Failed to close GPIO character device file");
 free(chrdev_name);
 return ret;
}
