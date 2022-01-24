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
struct minstrel_ht_sta_priv {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct dentry*,struct minstrel_ht_sta_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  minstrel_ht_stat_csv_fops ; 
 int /*<<< orphan*/  minstrel_ht_stat_fops ; 

void
FUNC1(void *priv, void *priv_sta, struct dentry *dir)
{
	struct minstrel_ht_sta_priv *msp = priv_sta;

	FUNC0("rc_stats", 0444, dir, msp,
			    &minstrel_ht_stat_fops);
	FUNC0("rc_stats_csv", 0444, dir, msp,
			    &minstrel_ht_stat_csv_fops);
}