
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_lib_info {int * fw; } ;


 int release_firmware (int *) ;

void skl_release_library(struct skl_lib_info *linfo, int lib_count)
{
 int i;


 for (i = 1; i < lib_count; i++) {
  if (linfo[i].fw) {
   release_firmware(linfo[i].fw);
   linfo[i].fw = ((void*)0);
  }
 }
}
