
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry {struct block_info* block_info; } ;
struct block_info {scalar_t__ start; scalar_t__ end; TYPE_1__* sym; } ;
struct TYPE_2__ {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int block_pair_cmp(struct hist_entry *a, struct hist_entry *b)
{
 struct block_info *bi_a = a->block_info;
 struct block_info *bi_b = b->block_info;
 int cmp;

 if (!bi_a->sym || !bi_b->sym)
  return -1;

 cmp = strcmp(bi_a->sym->name, bi_b->sym->name);

 if ((!cmp) && (bi_a->start == bi_b->start) && (bi_a->end == bi_b->end))
  return 0;

 return -1;
}
