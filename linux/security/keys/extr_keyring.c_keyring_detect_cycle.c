
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lookup_type; struct key* raw_data; } ;
struct keyring_search_context {int flags; int result; int iterator; TYPE_1__ match_data; int index_key; } ;
struct key {int index_key; } ;


 int EAGAIN ;
 int KEYRING_SEARCH_DETECT_TOO_DEEP ;
 int KEYRING_SEARCH_LOOKUP_DIRECT ;
 int KEYRING_SEARCH_NO_CHECK_PERM ;
 int KEYRING_SEARCH_NO_STATE_CHECK ;
 int KEYRING_SEARCH_NO_UPDATE_TIME ;
 int KEYRING_SEARCH_RECURSE ;
 int PTR_ERR (int ) ;
 int keyring_detect_cycle_iterator ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int search_nested_keyrings (struct key*,struct keyring_search_context*) ;

__attribute__((used)) static int keyring_detect_cycle(struct key *A, struct key *B)
{
 struct keyring_search_context ctx = {
  .index_key = A->index_key,
  .match_data.raw_data = A,
  .match_data.lookup_type = KEYRING_SEARCH_LOOKUP_DIRECT,
  .iterator = keyring_detect_cycle_iterator,
  .flags = (KEYRING_SEARCH_NO_STATE_CHECK |
        KEYRING_SEARCH_NO_UPDATE_TIME |
        KEYRING_SEARCH_NO_CHECK_PERM |
        KEYRING_SEARCH_DETECT_TOO_DEEP |
        KEYRING_SEARCH_RECURSE),
 };

 rcu_read_lock();
 search_nested_keyrings(B, &ctx);
 rcu_read_unlock();
 return PTR_ERR(ctx.result) == -EAGAIN ? 0 : PTR_ERR(ctx.result);
}
