
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char const* d_name; } ;
typedef int DIR ;


 int ENOENT ;
 scalar_t__ check_prefix (char const*,char*) ;
 int closedir (int *) ;
 int errno ;
 int getopt (int,char**,char*) ;
 int list_device (char const*) ;
 int * opendir (char*) ;
 char* optarg ;
 int perror (char*) ;
 int print_usage () ;
 struct dirent* readdir (int *) ;

int main(int argc, char **argv)
{
 const char *device_name = ((void*)0);
 int ret;
 int c;

 while ((c = getopt(argc, argv, "n:")) != -1) {
  switch (c) {
  case 'n':
   device_name = optarg;
   break;
  case '?':
   print_usage();
   return -1;
  }
 }

 if (device_name)
  ret = list_device(device_name);
 else {
  const struct dirent *ent;
  DIR *dp;


  dp = opendir("/dev");
  if (!dp) {
   ret = -errno;
   goto error_out;
  }

  ret = -ENOENT;
  while (ent = readdir(dp), ent) {
   if (check_prefix(ent->d_name, "gpiochip")) {
    ret = list_device(ent->d_name);
    if (ret)
     break;
   }
  }

  ret = 0;
  if (closedir(dp) == -1) {
   perror("scanning devices: Failed to close directory");
   ret = -errno;
  }
 }
error_out:
 return ret;
}
