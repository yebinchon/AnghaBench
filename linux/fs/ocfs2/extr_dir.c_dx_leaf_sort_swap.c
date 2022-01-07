
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dx_entry {int dummy; } ;


 int BUG_ON (int) ;
 int swap (struct ocfs2_dx_entry,struct ocfs2_dx_entry) ;

__attribute__((used)) static void dx_leaf_sort_swap(void *a, void *b, int size)
{
 struct ocfs2_dx_entry *entry1 = a;
 struct ocfs2_dx_entry *entry2 = b;

 BUG_ON(size != sizeof(*entry1));

 swap(*entry1, *entry2);
}
