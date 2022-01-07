
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct branch_flags {scalar_t__ predicted; } ;
struct block_range_iter {int dummy; } ;
struct block_range {int pred; int taken; int is_branch; int coverage; struct symbol* sym; int entry; int is_target; } ;
struct annotation {int max_coverage; } ;
struct addr_map_symbol {scalar_t__ addr; struct symbol* sym; } ;


 int assert (int ) ;
 struct block_range_iter block_range__create (scalar_t__,scalar_t__) ;
 struct block_range* block_range_iter (struct block_range_iter*) ;
 scalar_t__ block_range_iter__next (struct block_range_iter*) ;
 int block_range_iter__valid (struct block_range_iter*) ;
 int max (int ,int ) ;
 struct annotation* symbol__annotation (struct symbol*) ;

__attribute__((used)) static void process_basic_block(struct addr_map_symbol *start,
    struct addr_map_symbol *end,
    struct branch_flags *flags)
{
 struct symbol *sym = start->sym;
 struct annotation *notes = sym ? symbol__annotation(sym) : ((void*)0);
 struct block_range_iter iter;
 struct block_range *entry;




 if (!start->addr || start->addr > end->addr)
  return;

 iter = block_range__create(start->addr, end->addr);
 if (!block_range_iter__valid(&iter))
  return;




 entry = block_range_iter(&iter);
 assert(entry->is_target);
 entry->entry++;

 do {
  entry = block_range_iter(&iter);

  entry->coverage++;
  entry->sym = sym;

  if (notes)
   notes->max_coverage = max(notes->max_coverage, entry->coverage);

 } while (block_range_iter__next(&iter));




 entry = block_range_iter(&iter);
 assert(entry->is_branch);
 entry->taken++;
 if (flags->predicted)
  entry->pred++;
}
