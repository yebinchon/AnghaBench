
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct perf_hpp_fmt {int dummy; } ;
struct perf_hpp {int size; int buf; } ;
struct hist_entry {TYPE_2__* mem_info; int hists; } ;
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ daddr; } ;


 int HEX_STR (char*,int ) ;
 int c2c_width (struct perf_hpp_fmt*,struct perf_hpp*,int ) ;
 int cl_address (int ) ;
 int scnprintf (int ,int ,char*,int,int ) ;

__attribute__((used)) static int dcacheline_entry(struct perf_hpp_fmt *fmt, struct perf_hpp *hpp,
       struct hist_entry *he)
{
 uint64_t addr = 0;
 int width = c2c_width(fmt, hpp, he->hists);
 char buf[20];

 if (he->mem_info)
  addr = cl_address(he->mem_info->daddr.addr);

 return scnprintf(hpp->buf, hpp->size, "%*s", width, HEX_STR(buf, addr));
}
