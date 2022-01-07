
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int chain_lookup_hits ;
 int chain_lookup_misses ;
 unsigned long long debug_atomic_read (int ) ;
 int hardirqs_off_events ;
 int hardirqs_on_events ;
 int nr_cyclic_checks ;
 int nr_find_usage_backwards_checks ;
 int nr_find_usage_forwards_checks ;
 int nr_redundant ;
 int nr_redundant_checks ;
 int redundant_hardirqs_off ;
 int redundant_hardirqs_on ;
 int redundant_softirqs_off ;
 int redundant_softirqs_on ;
 int seq_printf (struct seq_file*,char*,unsigned long long) ;
 int softirqs_off_events ;
 int softirqs_on_events ;

__attribute__((used)) static void lockdep_stats_debug_show(struct seq_file *m)
{
}
