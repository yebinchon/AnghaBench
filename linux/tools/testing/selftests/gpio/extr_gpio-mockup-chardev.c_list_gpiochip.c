
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiochip_info {int label; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int EXIT_FAILURE ;
 scalar_t__ GC_NUM ;
 int GPIO_GET_CHIPINFO_IOCTL ;
 int asprintf (char**,char*,int ) ;
 struct gpiochip_info* calloc (int,scalar_t__) ;
 scalar_t__ check_prefix (int ,char const*) ;
 int close (int) ;
 int closedir (int *) ;
 int err (int ,char*,...) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int free (struct gpiochip_info*) ;
 int ioctl (int,int ,struct gpiochip_info*) ;
 int open (char*,int ) ;
 int * opendir (char*) ;
 int perror (char*) ;
 struct dirent* readdir (int *) ;
 struct gpiochip_info* realloc (struct gpiochip_info*,int) ;
 int stderr ;
 scalar_t__ strcmp (int ,char const*) ;
 int strerror (int) ;

__attribute__((used)) static struct gpiochip_info *list_gpiochip(const char *gpiochip_name, int *ret)
{
 struct gpiochip_info *cinfo;
 struct gpiochip_info *current;
 const struct dirent *ent;
 DIR *dp;
 char *chrdev_name;
 int fd;
 int i = 0;

 cinfo = calloc(sizeof(struct gpiochip_info) * 4, GC_NUM + 1);
 if (!cinfo)
  err(EXIT_FAILURE, "gpiochip_info allocation failed");

 current = cinfo;
 dp = opendir("/dev");
 if (!dp) {
  *ret = -errno;
  goto error_out;
 } else {
  *ret = 0;
 }

 while (ent = readdir(dp), ent) {
  if (check_prefix(ent->d_name, "gpiochip")) {
   *ret = asprintf(&chrdev_name, "/dev/%s", ent->d_name);
   if (*ret < 0)
    goto error_out;

   fd = open(chrdev_name, 0);
   if (fd == -1) {
    *ret = -errno;
    fprintf(stderr, "Failed to open %s\n",
     chrdev_name);
    goto error_close_dir;
   }
   *ret = ioctl(fd, GPIO_GET_CHIPINFO_IOCTL, current);
   if (*ret == -1) {
    perror("Failed to issue CHIPINFO IOCTL\n");
    goto error_close_dir;
   }
   close(fd);
   if (strcmp(current->label, gpiochip_name) == 0
       || check_prefix(current->label, gpiochip_name)) {
    *ret = 0;
    current++;
    i++;
   }
  }
 }

 if ((!*ret && i == 0) || *ret < 0) {
  free(cinfo);
  cinfo = ((void*)0);
 }
 if (!*ret && i > 0) {
  cinfo = realloc(cinfo, sizeof(struct gpiochip_info) * 4 * i);
  *ret = i;
 }

error_close_dir:
 closedir(dp);
error_out:
 if (*ret < 0)
  err(EXIT_FAILURE, "list gpiochip failed: %s", strerror(*ret));

 return cinfo;
}
