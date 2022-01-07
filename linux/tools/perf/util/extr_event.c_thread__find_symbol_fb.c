
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct thread {int dummy; } ;
struct symbol {int dummy; } ;
struct addr_location {struct symbol* sym; int addr; int map; } ;


 struct symbol* map__find_symbol (int ,int ) ;
 scalar_t__ thread__find_map_fb (struct thread*,int ,int ,struct addr_location*) ;

struct symbol *thread__find_symbol_fb(struct thread *thread, u8 cpumode,
          u64 addr, struct addr_location *al)
{
 al->sym = ((void*)0);
 if (thread__find_map_fb(thread, cpumode, addr, al))
  al->sym = map__find_symbol(al->map, al->addr);
 return al->sym;
}
