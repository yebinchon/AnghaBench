
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlm_ctxt {int dlm_join_events; int joining_node; int spinlock; } ;


 int assert_spin_locked (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void __dlm_set_joining_node(struct dlm_ctxt *dlm,
       u8 node)
{
 assert_spin_locked(&dlm->spinlock);

 dlm->joining_node = node;
 wake_up(&dlm->dlm_join_events);
}
