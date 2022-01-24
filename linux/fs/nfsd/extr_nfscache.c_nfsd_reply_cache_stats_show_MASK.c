#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct nfsd_net* private; } ;
struct nfsd_net {int max_drc_entries; int maskbits; int drc_mem_usage; int payload_misses; int longest_chain; int longest_chain_cachesize; int /*<<< orphan*/  num_drc_entries; } ;
struct TYPE_2__ {int rchits; int rcmisses; int rcnocache; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ nfsdstats ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	struct nfsd_net *nn = m->private;

	FUNC1(m, "max entries:           %u\n", nn->max_drc_entries);
	FUNC1(m, "num entries:           %u\n",
			FUNC0(&nn->num_drc_entries));
	FUNC1(m, "hash buckets:          %u\n", 1 << nn->maskbits);
	FUNC1(m, "mem usage:             %u\n", nn->drc_mem_usage);
	FUNC1(m, "cache hits:            %u\n", nfsdstats.rchits);
	FUNC1(m, "cache misses:          %u\n", nfsdstats.rcmisses);
	FUNC1(m, "not cached:            %u\n", nfsdstats.rcnocache);
	FUNC1(m, "payload misses:        %u\n", nn->payload_misses);
	FUNC1(m, "longest chain len:     %u\n", nn->longest_chain);
	FUNC1(m, "cachesize at longest:  %u\n", nn->longest_chain_cachesize);
	return 0;
}