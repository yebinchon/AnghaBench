
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int vol_id; int ubi_num; } ;
struct TYPE_5__ {int unmount_mode; int bulk_read; int chk_data_crc; int compr_type; scalar_t__ override_compr; } ;
struct ubifs_info {TYPE_3__ vi; TYPE_2__ mount_opts; } ;
struct seq_file {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;


 int seq_printf (struct seq_file*,char*,int ,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int ubifs_assert_action_name (struct ubifs_info*) ;
 int ubifs_compr_name (struct ubifs_info*,int ) ;

__attribute__((used)) static int ubifs_show_options(struct seq_file *s, struct dentry *root)
{
 struct ubifs_info *c = root->d_sb->s_fs_info;

 if (c->mount_opts.unmount_mode == 2)
  seq_puts(s, ",fast_unmount");
 else if (c->mount_opts.unmount_mode == 1)
  seq_puts(s, ",norm_unmount");

 if (c->mount_opts.bulk_read == 2)
  seq_puts(s, ",bulk_read");
 else if (c->mount_opts.bulk_read == 1)
  seq_puts(s, ",no_bulk_read");

 if (c->mount_opts.chk_data_crc == 2)
  seq_puts(s, ",chk_data_crc");
 else if (c->mount_opts.chk_data_crc == 1)
  seq_puts(s, ",no_chk_data_crc");

 if (c->mount_opts.override_compr) {
  seq_printf(s, ",compr=%s",
      ubifs_compr_name(c, c->mount_opts.compr_type));
 }

 seq_printf(s, ",assert=%s", ubifs_assert_action_name(c));
 seq_printf(s, ",ubi=%d,vol=%d", c->vi.ubi_num, c->vi.vol_id);

 return 0;
}
