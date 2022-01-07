
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct lru_cache {int changed; int locked; int starving; int misses; int hits; int nr_elements; int used; int name; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

void lc_seq_printf_stats(struct seq_file *seq, struct lru_cache *lc)
{







 seq_printf(seq, "\t%s: used:%u/%u hits:%lu misses:%lu starving:%lu locked:%lu changed:%lu\n",
     lc->name, lc->used, lc->nr_elements,
     lc->hits, lc->misses, lc->starving, lc->locked, lc->changed);
}
