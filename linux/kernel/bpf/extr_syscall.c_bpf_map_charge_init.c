
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct user_struct {int dummy; } ;
struct bpf_map_memory {int pages; struct user_struct* user; } ;


 int E2BIG ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ U32_MAX ;
 int bpf_charge_memlock (struct user_struct*,int) ;
 int free_uid (struct user_struct*) ;
 struct user_struct* get_current_user () ;
 int round_up (scalar_t__,scalar_t__) ;

int bpf_map_charge_init(struct bpf_map_memory *mem, u64 size)
{
 u32 pages = round_up(size, PAGE_SIZE) >> PAGE_SHIFT;
 struct user_struct *user;
 int ret;

 if (size >= U32_MAX - PAGE_SIZE)
  return -E2BIG;

 user = get_current_user();
 ret = bpf_charge_memlock(user, pages);
 if (ret) {
  free_uid(user);
  return ret;
 }

 mem->pages = pages;
 mem->user = user;

 return 0;
}
