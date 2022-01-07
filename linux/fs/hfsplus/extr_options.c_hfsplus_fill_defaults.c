
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsplus_sb_info {int part; int session; int gid; int uid; int umask; void* type; void* creator; } ;


 void* HFSPLUS_DEF_CR_TYPE ;
 int current_gid () ;
 int current_uid () ;
 int current_umask () ;

void hfsplus_fill_defaults(struct hfsplus_sb_info *opts)
{
 if (!opts)
  return;

 opts->creator = HFSPLUS_DEF_CR_TYPE;
 opts->type = HFSPLUS_DEF_CR_TYPE;
 opts->umask = current_umask();
 opts->uid = current_uid();
 opts->gid = current_gid();
 opts->part = -1;
 opts->session = -1;
}
