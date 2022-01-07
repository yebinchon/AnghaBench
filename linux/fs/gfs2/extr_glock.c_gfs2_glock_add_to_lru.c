
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_glock {int gl_flags; int gl_lru; TYPE_1__* gl_ops; } ;
struct TYPE_2__ {int go_flags; } ;


 int GLF_LRU ;
 int GLOF_LRU ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int lru_count ;
 int lru_list ;
 int lru_lock ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

void gfs2_glock_add_to_lru(struct gfs2_glock *gl)
{
 if (!(gl->gl_ops->go_flags & GLOF_LRU))
  return;

 spin_lock(&lru_lock);

 list_del(&gl->gl_lru);
 list_add_tail(&gl->gl_lru, &lru_list);

 if (!test_bit(GLF_LRU, &gl->gl_flags)) {
  set_bit(GLF_LRU, &gl->gl_flags);
  atomic_inc(&lru_count);
 }

 spin_unlock(&lru_lock);
}
