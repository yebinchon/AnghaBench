
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_per_slot_free_list {int f_first; } ;
struct ocfs2_extent_tree {TYPE_1__* et_dealloc; } ;
struct TYPE_2__ {struct ocfs2_per_slot_free_list* c_first_suballocator; } ;



__attribute__((used)) static int ocfs2_is_dealloc_empty(struct ocfs2_extent_tree *et)
{
 struct ocfs2_per_slot_free_list *fl = ((void*)0);

 if (!et->et_dealloc)
  return 1;

 fl = et->et_dealloc->c_first_suballocator;
 if (!fl)
  return 1;

 if (!fl->f_first)
  return 1;

 return 0;
}
