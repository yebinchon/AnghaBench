
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sc_info {int sc_timer; int sc_state_lock; int sc_seq_request; int sc_seq_accepted; } ;


 int del_timer_sync (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nilfs_segctor_accept(struct nilfs_sc_info *sci)
{
 spin_lock(&sci->sc_state_lock);
 sci->sc_seq_accepted = sci->sc_seq_request;
 spin_unlock(&sci->sc_state_lock);
 del_timer_sync(&sci->sc_timer);
}
