
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {int n_used_nodes; int first_free; scalar_t__ n_free_nodes; } ;
struct fnode {int ea_size_s; int ea_offs; int acl_size_s; TYPE_2__ btree; int magic; } ;
struct extended_attribute {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ ino_t ;
struct TYPE_3__ {scalar_t__ sb_chk; } ;


 scalar_t__ FNODE_MAGIC ;
 int FNODE_RD_AHEAD ;
 scalar_t__ bp_internal (TYPE_2__*) ;
 int brelse (struct buffer_head*) ;
 struct extended_attribute* fnode_ea (struct fnode*) ;
 struct extended_attribute* fnode_end_ea (struct fnode*) ;
 int fnode_is_dir (struct fnode*) ;
 scalar_t__ hpfs_chk_sectors (struct super_block*,scalar_t__,int,char*) ;
 int hpfs_error (struct super_block*,char*,unsigned long,...) ;
 struct fnode* hpfs_map_sector (struct super_block*,scalar_t__,struct buffer_head**,int ) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct extended_attribute* next_ea (struct extended_attribute*) ;

struct fnode *hpfs_map_fnode(struct super_block *s, ino_t ino, struct buffer_head **bhp)
{
 struct fnode *fnode;
 if (hpfs_sb(s)->sb_chk) if (hpfs_chk_sectors(s, ino, 1, "fnode")) {
  return ((void*)0);
 }
 if ((fnode = hpfs_map_sector(s, ino, bhp, FNODE_RD_AHEAD))) {
  if (hpfs_sb(s)->sb_chk) {
   struct extended_attribute *ea;
   struct extended_attribute *ea_end;
   if (le32_to_cpu(fnode->magic) != FNODE_MAGIC) {
    hpfs_error(s, "bad magic on fnode %08lx",
     (unsigned long)ino);
    goto bail;
   }
   if (!fnode_is_dir(fnode)) {
    if ((unsigned)fnode->btree.n_used_nodes + (unsigned)fnode->btree.n_free_nodes !=
        (bp_internal(&fnode->btree) ? 12 : 8)) {
     hpfs_error(s,
        "bad number of nodes in fnode %08lx",
         (unsigned long)ino);
     goto bail;
    }
    if (le16_to_cpu(fnode->btree.first_free) !=
        8 + fnode->btree.n_used_nodes * (bp_internal(&fnode->btree) ? 8 : 12)) {
     hpfs_error(s,
         "bad first_free pointer in fnode %08lx",
         (unsigned long)ino);
     goto bail;
    }
   }
   if (le16_to_cpu(fnode->ea_size_s) && (le16_to_cpu(fnode->ea_offs) < 0xc4 ||
      le16_to_cpu(fnode->ea_offs) + le16_to_cpu(fnode->acl_size_s) + le16_to_cpu(fnode->ea_size_s) > 0x200)) {
    hpfs_error(s,
     "bad EA info in fnode %08lx: ea_offs == %04x ea_size_s == %04x",
     (unsigned long)ino,
     le16_to_cpu(fnode->ea_offs), le16_to_cpu(fnode->ea_size_s));
    goto bail;
   }
   ea = fnode_ea(fnode);
   ea_end = fnode_end_ea(fnode);
   while (ea != ea_end) {
    if (ea > ea_end) {
     hpfs_error(s, "bad EA in fnode %08lx",
      (unsigned long)ino);
     goto bail;
    }
    ea = next_ea(ea);
   }
  }
 }
 return fnode;
 bail:
 brelse(*bhp);
 return ((void*)0);
}
