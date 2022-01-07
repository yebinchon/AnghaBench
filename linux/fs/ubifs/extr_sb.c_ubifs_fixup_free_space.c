
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_sb_node {int flags; } ;
struct ubifs_info {int space_fixup; int superblock_need_write; int ro_mount; struct ubifs_sb_node* sup_node; } ;


 int UBIFS_FLG_SPACE_FIXUP ;
 int cpu_to_le32 (int ) ;
 int fixup_free_space (struct ubifs_info*) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_msg (struct ubifs_info*,char*) ;

int ubifs_fixup_free_space(struct ubifs_info *c)
{
 int err;
 struct ubifs_sb_node *sup = c->sup_node;

 ubifs_assert(c, c->space_fixup);
 ubifs_assert(c, !c->ro_mount);

 ubifs_msg(c, "start fixing up free space");

 err = fixup_free_space(c);
 if (err)
  return err;


 c->space_fixup = 0;
 sup->flags &= cpu_to_le32(~UBIFS_FLG_SPACE_FIXUP);

 c->superblock_need_write = 1;

 ubifs_msg(c, "free space fixup complete");
 return err;
}
