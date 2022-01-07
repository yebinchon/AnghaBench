
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_transaction_info {int dummy; } ;
struct nilfs_sc_info {int sc_super; int sc_flags; } ;


 int NILFS_SC_UNCLOSED ;
 int nilfs_segctor_construct (struct nilfs_sc_info*,int) ;
 int nilfs_segctor_start_timer (struct nilfs_sc_info*) ;
 int nilfs_transaction_lock (int ,struct nilfs_transaction_info*,int ) ;
 int nilfs_transaction_unlock (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nilfs_segctor_thread_construct(struct nilfs_sc_info *sci, int mode)
{
 struct nilfs_transaction_info ti;

 nilfs_transaction_lock(sci->sc_super, &ti, 0);
 nilfs_segctor_construct(sci, mode);






 if (test_bit(NILFS_SC_UNCLOSED, &sci->sc_flags))
  nilfs_segctor_start_timer(sci);

 nilfs_transaction_unlock(sci->sc_super);
}
