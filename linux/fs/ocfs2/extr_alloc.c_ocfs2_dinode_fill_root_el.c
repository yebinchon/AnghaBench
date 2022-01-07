
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_extent_tree {int * et_root_el; struct ocfs2_dinode* et_object; } ;
struct TYPE_2__ {int i_list; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;



__attribute__((used)) static void ocfs2_dinode_fill_root_el(struct ocfs2_extent_tree *et)
{
 struct ocfs2_dinode *di = et->et_object;

 et->et_root_el = &di->id2.i_list;
}
