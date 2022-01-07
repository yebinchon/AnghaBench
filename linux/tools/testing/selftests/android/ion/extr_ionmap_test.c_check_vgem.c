
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name_len; char* name; int member_0; } ;
typedef TYPE_1__ drm_version_t ;


 int DRM_IOCTL_VERSION ;
 int ioctl (int,int ,TYPE_1__*) ;
 int strcmp (char*,char*) ;

int check_vgem(int fd)
{
 drm_version_t version = { 0 };
 char name[5];
 int ret;

 version.name_len = 4;
 version.name = name;

 ret = ioctl(fd, DRM_IOCTL_VERSION, &version);
 if (ret)
  return 1;

 return strcmp(name, "vgem");
}
