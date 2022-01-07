
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_glock {int gl_flags; int gl_lru; TYPE_1__* gl_ops; } ;
struct TYPE_2__ {int go_flags; } ;


 int GLF_LRU ;
 int GLOF_LRU ;
 int atomic_dec (int *) ;
 int clear_bit (int ,int *) ;
 int list_del_init (int *) ;
 int lru_count ;
 int lru_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void gfs2_glock_remove_from_lru(struct gfs2_glock *gl)
{
 if (!(gl->gl_ops->go_flags & GLOF_LRU))
  return;

 spin_lock(&lru_lock);
 if (test_bit(GLF_LRU, &gl->gl_flags)) {
  list_del_init(&gl->gl_lru);
  atomic_dec(&lru_count);
  clear_bit(GLF_LRU, &gl->gl_flags);
 }
 spin_unlock(&lru_lock);
}
