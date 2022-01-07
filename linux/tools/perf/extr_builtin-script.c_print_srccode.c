
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u8 ;
struct thread {int srccode_state; } ;
struct addr_location {int addr; int map; } ;
typedef int al ;


 int map__fprintf_srccode (int ,int ,int ,int *) ;
 int memset (struct addr_location*,int ,int) ;
 scalar_t__ printf (char*) ;
 int stdout ;
 int thread__find_map (struct thread*,int ,int ,struct addr_location*) ;

__attribute__((used)) static int print_srccode(struct thread *thread, u8 cpumode, uint64_t addr)
{
 struct addr_location al;
 int ret = 0;

 memset(&al, 0, sizeof(al));
 thread__find_map(thread, cpumode, addr, &al);
 if (!al.map)
  return 0;
 ret = map__fprintf_srccode(al.map, al.addr, stdout,
      &thread->srccode_state);
 if (ret)
  ret += printf("\n");
 return ret;
}
