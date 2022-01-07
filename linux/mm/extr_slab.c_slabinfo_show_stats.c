
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct kmem_cache {unsigned long high_mark; unsigned long num_allocations; unsigned long grown; unsigned long reaped; unsigned long errors; unsigned long max_freeable; unsigned long node_allocs; unsigned long node_frees; unsigned long node_overflow; int freemiss; int freehit; int allocmiss; int allochit; } ;


 unsigned long atomic_read (int *) ;
 int seq_printf (struct seq_file*,char*,unsigned long,unsigned long,unsigned long,unsigned long,...) ;

void slabinfo_show_stats(struct seq_file *m, struct kmem_cache *cachep)
{
}
