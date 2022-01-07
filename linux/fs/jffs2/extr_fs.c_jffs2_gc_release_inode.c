
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_info {int dummy; } ;


 int OFNI_EDONI_2SFFJ (struct jffs2_inode_info*) ;
 int iput (int ) ;

void jffs2_gc_release_inode(struct jffs2_sb_info *c,
       struct jffs2_inode_info *f)
{
 iput(OFNI_EDONI_2SFFJ(f));
}
