
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_fs {int workdir; int upper_mnt; } ;



__attribute__((used)) static bool ovl_force_readonly(struct ovl_fs *ofs)
{
 return (!ofs->upper_mnt || !ofs->workdir);
}
