
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprobe_blacklist ;
 int kprobe_blacklist__find_by_address (int *,unsigned long) ;

__attribute__((used)) static bool kprobe_blacklist__listed(unsigned long address)
{
 return !!kprobe_blacklist__find_by_address(&kprobe_blacklist, address);
}
