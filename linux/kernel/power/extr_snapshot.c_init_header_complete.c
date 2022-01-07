
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swsusp_info {int version_code; int uts; } ;
struct new_utsname {int dummy; } ;


 int LINUX_VERSION_CODE ;
 int init_utsname () ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int init_header_complete(struct swsusp_info *info)
{
 memcpy(&info->uts, init_utsname(), sizeof(struct new_utsname));
 info->version_code = LINUX_VERSION_CODE;
 return 0;
}
