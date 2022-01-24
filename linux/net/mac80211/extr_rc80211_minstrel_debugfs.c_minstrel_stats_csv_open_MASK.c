#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct minstrel_sta_info {unsigned int n_rates; unsigned int* max_tp_rate; unsigned int max_prob_rate; scalar_t__ sample_packets; scalar_t__ total_packets; struct minstrel_rate* r; } ;
struct minstrel_rate_stats {int prob_ewma; int retry_count; int last_success; int last_attempts; scalar_t__ att_hist; scalar_t__ succ_hist; } ;
struct minstrel_rate {int bitrate; int perfect_tx_time; struct minstrel_rate_stats stats; } ;
struct minstrel_debugfs_info {char* buf; int len; } ;
struct inode {struct minstrel_sta_info* i_private; } ;
struct file {struct minstrel_debugfs_info* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int,int) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct minstrel_debugfs_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct minstrel_rate*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

int
FUNC6(struct inode *inode, struct file *file)
{
	struct minstrel_sta_info *mi = inode->i_private;
	struct minstrel_debugfs_info *ms;
	unsigned int i, tp_max, tp_avg, eprob;
	char *p;

	ms = FUNC3(2048, GFP_KERNEL);
	if (!ms)
		return -ENOMEM;

	file->private_data = ms;
	p = ms->buf;

	for (i = 0; i < mi->n_rates; i++) {
		struct minstrel_rate *mr = &mi->r[i];
		struct minstrel_rate_stats *mrs = &mi->r[i].stats;

		p += FUNC5(p, "%s" ,((i == mi->max_tp_rate[0]) ? "A" : ""));
		p += FUNC5(p, "%s" ,((i == mi->max_tp_rate[1]) ? "B" : ""));
		p += FUNC5(p, "%s" ,((i == mi->max_tp_rate[2]) ? "C" : ""));
		p += FUNC5(p, "%s" ,((i == mi->max_tp_rate[3]) ? "D" : ""));
		p += FUNC5(p, "%s" ,((i == mi->max_prob_rate) ? "P" : ""));

		p += FUNC5(p, ",%u%s", mr->bitrate / 2,
				(mr->bitrate & 1 ? ".5," : ","));
		p += FUNC5(p, "%u,", i);
		p += FUNC5(p, "%u,",mr->perfect_tx_time);

		tp_max = FUNC4(mr, FUNC0(100,100));
		tp_avg = FUNC4(mr, mrs->prob_ewma);
		eprob = FUNC1(mrs->prob_ewma * 1000);

		p += FUNC5(p, "%u.%u,%u.%u,%u.%u,%u,%u,%u,"
				"%llu,%llu,%d,%d\n",
				tp_max / 10, tp_max % 10,
				tp_avg / 10, tp_avg % 10,
				eprob / 10, eprob % 10,
				mrs->retry_count,
				mrs->last_success,
				mrs->last_attempts,
				(unsigned long long)mrs->succ_hist,
				(unsigned long long)mrs->att_hist,
				mi->total_packets - mi->sample_packets,
				mi->sample_packets);

	}
	ms->len = p - ms->buf;

	FUNC2(ms->len + sizeof(*ms) > 2048);

	return 0;
}