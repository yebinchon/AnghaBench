
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_per_slot_free_list {int f_inode_type; int f_slot; struct ocfs2_per_slot_free_list* f_next_suballocator; int * f_first; } ;
struct ocfs2_cached_dealloc_ctxt {struct ocfs2_per_slot_free_list* c_first_suballocator; } ;


 int GFP_NOFS ;
 struct ocfs2_per_slot_free_list* kmalloc (int,int ) ;

__attribute__((used)) static struct ocfs2_per_slot_free_list *
ocfs2_find_per_slot_free_list(int type,
         int slot,
         struct ocfs2_cached_dealloc_ctxt *ctxt)
{
 struct ocfs2_per_slot_free_list *fl = ctxt->c_first_suballocator;

 while (fl) {
  if (fl->f_inode_type == type && fl->f_slot == slot)
   return fl;

  fl = fl->f_next_suballocator;
 }

 fl = kmalloc(sizeof(*fl), GFP_NOFS);
 if (fl) {
  fl->f_inode_type = type;
  fl->f_slot = slot;
  fl->f_first = ((void*)0);
  fl->f_next_suballocator = ctxt->c_first_suballocator;

  ctxt->c_first_suballocator = fl;
 }
 return fl;
}
