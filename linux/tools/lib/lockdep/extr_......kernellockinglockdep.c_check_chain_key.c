
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct task_struct {unsigned int lockdep_depth; scalar_t__ curr_chain_key; struct held_lock* held_locks; } ;
struct held_lock {scalar_t__ prev_chain_key; scalar_t__ irq_context; int class_idx; } ;


 scalar_t__ DEBUG_LOCKS_WARN_ON (int) ;
 scalar_t__ INITIAL_CHAIN_KEY ;
 int WARN (int,char*,unsigned int,unsigned int,unsigned long long,unsigned long long) ;
 int debug_locks_off () ;
 scalar_t__ iterate_chain_key (scalar_t__,int ) ;
 int lock_classes_in_use ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void check_chain_key(struct task_struct *curr)
{
}
