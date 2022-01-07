
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;



__attribute__((used)) static unsigned long xfrm_hash_new_size(unsigned int state_hmask)
{
 return ((state_hmask + 1) << 1) * sizeof(struct hlist_head);
}
