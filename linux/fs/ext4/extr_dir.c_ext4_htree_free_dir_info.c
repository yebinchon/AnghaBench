
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_private_info {int root; } ;


 int free_rb_tree_fname (int *) ;
 int kfree (struct dir_private_info*) ;

void ext4_htree_free_dir_info(struct dir_private_info *p)
{
 free_rb_tree_fname(&p->root);
 kfree(p);
}
