
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct css_task_iter {unsigned int flags; int * cset_pos; int * cset_head; TYPE_1__* ss; } ;
struct cgroup_subsys_state {TYPE_2__* cgroup; TYPE_1__* ss; } ;
struct TYPE_4__ {int cset_links; int * e_csets; } ;
struct TYPE_3__ {size_t id; } ;


 int WARN_ON_ONCE (int) ;
 int css_set_lock ;
 int css_task_iter_advance (struct css_task_iter*) ;
 int memset (struct css_task_iter*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int use_task_css_set_links ;

void css_task_iter_start(struct cgroup_subsys_state *css, unsigned int flags,
    struct css_task_iter *it)
{

 WARN_ON_ONCE(!use_task_css_set_links);

 memset(it, 0, sizeof(*it));

 spin_lock_irq(&css_set_lock);

 it->ss = css->ss;
 it->flags = flags;

 if (it->ss)
  it->cset_pos = &css->cgroup->e_csets[css->ss->id];
 else
  it->cset_pos = &css->cgroup->cset_links;

 it->cset_head = it->cset_pos;

 css_task_iter_advance(it);

 spin_unlock_irq(&css_set_lock);
}
