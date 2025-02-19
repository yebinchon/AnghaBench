
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct nfsd_net* private; } ;
struct nfsd_net {int max_drc_entries; int maskbits; int drc_mem_usage; int payload_misses; int longest_chain; int longest_chain_cachesize; int num_drc_entries; } ;
struct TYPE_2__ {int rchits; int rcmisses; int rcnocache; } ;


 int atomic_read (int *) ;
 TYPE_1__ nfsdstats ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int nfsd_reply_cache_stats_show(struct seq_file *m, void *v)
{
 struct nfsd_net *nn = m->private;

 seq_printf(m, "max entries:           %u\n", nn->max_drc_entries);
 seq_printf(m, "num entries:           %u\n",
   atomic_read(&nn->num_drc_entries));
 seq_printf(m, "hash buckets:          %u\n", 1 << nn->maskbits);
 seq_printf(m, "mem usage:             %u\n", nn->drc_mem_usage);
 seq_printf(m, "cache hits:            %u\n", nfsdstats.rchits);
 seq_printf(m, "cache misses:          %u\n", nfsdstats.rcmisses);
 seq_printf(m, "not cached:            %u\n", nfsdstats.rcnocache);
 seq_printf(m, "payload misses:        %u\n", nn->payload_misses);
 seq_printf(m, "longest chain len:     %u\n", nn->longest_chain);
 seq_printf(m, "cachesize at longest:  %u\n", nn->longest_chain_cachesize);
 return 0;
}
