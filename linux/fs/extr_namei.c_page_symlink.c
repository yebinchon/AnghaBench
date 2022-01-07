
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;


 int __GFP_FS ;
 int __page_symlink (struct inode*,char const*,int,int) ;
 int mapping_gfp_constraint (int ,int ) ;

int page_symlink(struct inode *inode, const char *symname, int len)
{
 return __page_symlink(inode, symname, len,
   !mapping_gfp_constraint(inode->i_mapping, __GFP_FS));
}
