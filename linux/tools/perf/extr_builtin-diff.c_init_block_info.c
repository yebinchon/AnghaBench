
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct cyc_hist {int num_aggr; int num; int cycles_aggr; int cycles; int start; } ;
struct block_info {int end; int num_aggr; int num; int cycles_aggr; int cycles; int start; struct symbol* sym; } ;



__attribute__((used)) static void init_block_info(struct block_info *bi, struct symbol *sym,
       struct cyc_hist *ch, int offset)
{
 bi->sym = sym;
 bi->start = ch->start;
 bi->end = offset;
 bi->cycles = ch->cycles;
 bi->cycles_aggr = ch->cycles_aggr;
 bi->num = ch->num;
 bi->num_aggr = ch->num_aggr;
}
