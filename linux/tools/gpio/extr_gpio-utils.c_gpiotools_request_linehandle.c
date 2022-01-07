
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiohandle_request {unsigned int* lineoffsets; unsigned int flags; unsigned int lines; int fd; int default_values; int consumer_label; } ;
struct gpiohandle_data {int dummy; } ;


 int ENOMEM ;
 unsigned int GPIOHANDLE_REQUEST_OUTPUT ;
 int GPIO_GET_LINEHANDLE_IOCTL ;
 int asprintf (char**,char*,char const*) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char*,...) ;
 int free (char*) ;
 int ioctl (int,int ,struct gpiohandle_request*) ;
 int memcpy (int ,struct gpiohandle_data*,int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int stderr ;
 int strcpy (int ,char const*) ;
 char* strerror (int) ;

int gpiotools_request_linehandle(const char *device_name, unsigned int *lines,
     unsigned int nlines, unsigned int flag,
     struct gpiohandle_data *data,
     const char *consumer_label)
{
 struct gpiohandle_request req;
 char *chrdev_name;
 int fd;
 int i;
 int ret;

 ret = asprintf(&chrdev_name, "/dev/%s", device_name);
 if (ret < 0)
  return -ENOMEM;

 fd = open(chrdev_name, 0);
 if (fd == -1) {
  ret = -errno;
  fprintf(stderr, "Failed to open %s, %s\n",
   chrdev_name, strerror(errno));
  goto exit_close_error;
 }

 for (i = 0; i < nlines; i++)
  req.lineoffsets[i] = lines[i];

 req.flags = flag;
 strcpy(req.consumer_label, consumer_label);
 req.lines = nlines;
 if (flag & GPIOHANDLE_REQUEST_OUTPUT)
  memcpy(req.default_values, data, sizeof(req.default_values));

 ret = ioctl(fd, GPIO_GET_LINEHANDLE_IOCTL, &req);
 if (ret == -1) {
  ret = -errno;
  fprintf(stderr, "Failed to issue %s (%d), %s\n",
   "GPIO_GET_LINEHANDLE_IOCTL", ret, strerror(errno));
 }

exit_close_error:
 if (close(fd) == -1)
  perror("Failed to close GPIO character device file");
 free(chrdev_name);
 return ret < 0 ? ret : req.fd;
}
