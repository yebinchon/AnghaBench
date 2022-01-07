
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_struct {int dummy; } ;
struct held_lock {int dummy; } ;



__attribute__((used)) static inline int validate_chain(struct task_struct *curr,
     struct held_lock *hlock,
     int chain_head, u64 chain_key)
{
 return 1;
}
