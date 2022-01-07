
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_user_ace_state {int dummy; } ;
struct posix_acl_state {int empty; void* users; void* groups; } ;
struct posix_ace_state_array {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int memset (struct posix_acl_state*,int ,int) ;

__attribute__((used)) static int
init_state(struct posix_acl_state *state, int cnt)
{
 int alloc;

 memset(state, 0, sizeof(struct posix_acl_state));
 state->empty = 1;





 alloc = sizeof(struct posix_ace_state_array)
  + cnt*sizeof(struct posix_user_ace_state);
 state->users = kzalloc(alloc, GFP_KERNEL);
 if (!state->users)
  return -ENOMEM;
 state->groups = kzalloc(alloc, GFP_KERNEL);
 if (!state->groups) {
  kfree(state->users);
  return -ENOMEM;
 }
 return 0;
}
