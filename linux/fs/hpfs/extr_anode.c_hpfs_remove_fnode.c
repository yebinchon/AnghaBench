
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* external; } ;
struct fnode {int ea_size_l; int ea_secno; TYPE_2__ u; int btree; } ;
struct extended_attribute {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int fnode_secno ;
struct TYPE_3__ {int disk_secno; } ;


 int brelse (struct buffer_head*) ;
 int ea_in_anode (struct extended_attribute*) ;
 scalar_t__ ea_indirect (struct extended_attribute*) ;
 int ea_len (struct extended_attribute*) ;
 int ea_sec (struct extended_attribute*) ;
 struct extended_attribute* fnode_ea (struct fnode*) ;
 struct extended_attribute* fnode_end_ea (struct fnode*) ;
 int fnode_in_anode (struct fnode*) ;
 int fnode_is_dir (struct fnode*) ;
 int hpfs_ea_ext_remove (struct super_block*,int ,int ,int ) ;
 int hpfs_ea_remove (struct super_block*,int ,int ,int ) ;
 int hpfs_free_sectors (struct super_block*,int ,int) ;
 struct fnode* hpfs_map_fnode (struct super_block*,int ,struct buffer_head**) ;
 int hpfs_remove_btree (struct super_block*,int *) ;
 int hpfs_remove_dtree (struct super_block*,int ) ;
 int le32_to_cpu (int ) ;
 struct extended_attribute* next_ea (struct extended_attribute*) ;

void hpfs_remove_fnode(struct super_block *s, fnode_secno fno)
{
 struct buffer_head *bh;
 struct fnode *fnode;
 struct extended_attribute *ea;
 struct extended_attribute *ea_end;
 if (!(fnode = hpfs_map_fnode(s, fno, &bh))) return;
 if (!fnode_is_dir(fnode)) hpfs_remove_btree(s, &fnode->btree);
 else hpfs_remove_dtree(s, le32_to_cpu(fnode->u.external[0].disk_secno));
 ea_end = fnode_end_ea(fnode);
 for (ea = fnode_ea(fnode); ea < ea_end; ea = next_ea(ea))
  if (ea_indirect(ea))
   hpfs_ea_remove(s, ea_sec(ea), ea_in_anode(ea), ea_len(ea));
 hpfs_ea_ext_remove(s, le32_to_cpu(fnode->ea_secno), fnode_in_anode(fnode), le32_to_cpu(fnode->ea_size_l));
 brelse(bh);
 hpfs_free_sectors(s, fno, 1);
}
