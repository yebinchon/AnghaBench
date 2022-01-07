
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int ro_error; TYPE_1__* vfs_sb; scalar_t__ no_chk_data_crc; } ;
struct TYPE_2__ {int s_flags; } ;


 int SB_RDONLY ;
 int dump_stack () ;
 int ubifs_warn (struct ubifs_info*,char*,int) ;

void ubifs_ro_mode(struct ubifs_info *c, int err)
{
 if (!c->ro_error) {
  c->ro_error = 1;
  c->no_chk_data_crc = 0;
  c->vfs_sb->s_flags |= SB_RDONLY;
  ubifs_warn(c, "switched to read-only mode, error %d", err);
  dump_stack();
 }
}
