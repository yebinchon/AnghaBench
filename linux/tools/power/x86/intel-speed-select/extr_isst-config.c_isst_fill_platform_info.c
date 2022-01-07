
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ api_version; } ;


 int ISST_IF_GET_PLATFORM_INFO ;
 int O_RDWR ;
 int close (int) ;
 int err (int,char*,char const*) ;
 int ioctl (int,int ,TYPE_1__*) ;
 TYPE_1__ isst_platform_info ;
 int open (char const*,int ) ;
 int perror (char*) ;
 int printf (char*) ;
 scalar_t__ supported_api_ver ;

__attribute__((used)) static int isst_fill_platform_info(void)
{
 const char *pathname = "/dev/isst_interface";
 int fd;

 fd = open(pathname, O_RDWR);
 if (fd < 0)
  err(-1, "%s open failed", pathname);

 if (ioctl(fd, ISST_IF_GET_PLATFORM_INFO, &isst_platform_info) == -1) {
  perror("ISST_IF_GET_PLATFORM_INFO");
  close(fd);
  return -1;
 }

 close(fd);

 if (isst_platform_info.api_version > supported_api_ver) {
  printf("Incompatible API versions; Upgrade of tool is required\n");
  return -1;
 }
 return 0;
}
