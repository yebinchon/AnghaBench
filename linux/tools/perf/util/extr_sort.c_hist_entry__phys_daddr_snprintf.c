
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char* uint64_t ;
struct hist_entry {int level; TYPE_2__* mem_info; } ;
struct TYPE_3__ {char* phys_addr; } ;
struct TYPE_4__ {TYPE_1__ daddr; } ;


 int BITS_PER_LONG ;
 scalar_t__ repsep_snprintf (char*,size_t,char*,unsigned int,...) ;

__attribute__((used)) static int hist_entry__phys_daddr_snprintf(struct hist_entry *he, char *bf,
        size_t size, unsigned int width)
{
 uint64_t addr = 0;
 size_t ret = 0;
 size_t len = BITS_PER_LONG / 4;

 addr = he->mem_info->daddr.phys_addr;

 ret += repsep_snprintf(bf + ret, size - ret, "[%c] ", he->level);

 ret += repsep_snprintf(bf + ret, size - ret, "%-#.*llx", len, addr);

 ret += repsep_snprintf(bf + ret, size - ret, "%-*s", width - ret, "");

 if (ret > width)
  bf[width] = '\0';

 return width;
}
