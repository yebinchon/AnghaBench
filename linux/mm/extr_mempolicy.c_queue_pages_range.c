
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_pages {unsigned long flags; int * prev; int * nmask; struct list_head* pagelist; } ;
struct mm_struct {int dummy; } ;
struct list_head {int dummy; } ;
typedef int nodemask_t ;


 int queue_pages_walk_ops ;
 int walk_page_range (struct mm_struct*,unsigned long,unsigned long,int *,struct queue_pages*) ;

__attribute__((used)) static int
queue_pages_range(struct mm_struct *mm, unsigned long start, unsigned long end,
  nodemask_t *nodes, unsigned long flags,
  struct list_head *pagelist)
{
 struct queue_pages qp = {
  .pagelist = pagelist,
  .flags = flags,
  .nmask = nodes,
  .prev = ((void*)0),
 };

 return walk_page_range(mm, start, end, &queue_pages_walk_ops, &qp);
}
