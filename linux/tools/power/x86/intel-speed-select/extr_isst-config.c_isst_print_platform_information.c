
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_if_platform_info {int api_version; int driver_version; int mbox_supported; int mmio_supported; } ;


 int ISST_IF_GET_PLATFORM_INFO ;
 int O_RDWR ;
 int close (int) ;
 int err (int,char*,char const*) ;
 int exit (int ) ;
 int fprintf (int ,char*,int) ;
 int ioctl (int,int ,struct isst_if_platform_info*) ;
 int open (char const*,int ) ;
 int outf ;
 int perror (char*) ;

__attribute__((used)) static void isst_print_platform_information(void)
{
 struct isst_if_platform_info platform_info;
 const char *pathname = "/dev/isst_interface";
 int fd;

 fd = open(pathname, O_RDWR);
 if (fd < 0)
  err(-1, "%s open failed", pathname);

 if (ioctl(fd, ISST_IF_GET_PLATFORM_INFO, &platform_info) == -1) {
  perror("ISST_IF_GET_PLATFORM_INFO");
 } else {
  fprintf(outf, "Platform: API version : %d\n",
   platform_info.api_version);
  fprintf(outf, "Platform: Driver version : %d\n",
   platform_info.driver_version);
  fprintf(outf, "Platform: mbox supported : %d\n",
   platform_info.mbox_supported);
  fprintf(outf, "Platform: mmio supported : %d\n",
   platform_info.mmio_supported);
 }

 close(fd);

 exit(0);
}
