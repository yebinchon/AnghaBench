
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_block {int b_granted; int b_flags; } ;


 int B_GOT_CALLBACK ;
 int B_TIMED_OUT ;

__attribute__((used)) static void
nlmsvc_update_deferred_block(struct nlm_block *block, int result)
{
 block->b_flags |= B_GOT_CALLBACK;
 if (result == 0)
  block->b_granted = 1;
 else
  block->b_flags |= B_TIMED_OUT;
}
