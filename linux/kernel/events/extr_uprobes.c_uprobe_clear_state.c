
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xol_area {struct xol_area* bitmap; int * pages; } ;
struct TYPE_2__ {struct xol_area* xol_area; } ;
struct mm_struct {TYPE_1__ uprobes_state; } ;


 int delayed_uprobe_lock ;
 int delayed_uprobe_remove (int *,struct mm_struct*) ;
 int kfree (struct xol_area*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_page (int ) ;

void uprobe_clear_state(struct mm_struct *mm)
{
 struct xol_area *area = mm->uprobes_state.xol_area;

 mutex_lock(&delayed_uprobe_lock);
 delayed_uprobe_remove(((void*)0), mm);
 mutex_unlock(&delayed_uprobe_lock);

 if (!area)
  return;

 put_page(area->pages[0]);
 kfree(area->bitmap);
 kfree(area);
}
