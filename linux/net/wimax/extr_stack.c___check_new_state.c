
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wimax_st { ____Placeholder_wimax_st } wimax_st ;


 scalar_t__ WARN_ON (int) ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static
void __check_new_state(enum wimax_st old_state, enum wimax_st new_state,
         unsigned int allowed_states_bm)
{
 if (WARN_ON(((1 << new_state) & allowed_states_bm) == 0)) {
  pr_err("SW BUG! Forbidden state change %u -> %u\n",
         old_state, new_state);
 }
}
