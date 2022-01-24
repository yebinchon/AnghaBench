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
struct fsl_ssi_dbg {int /*<<< orphan*/  dbg_dir; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,struct fsl_ssi_dbg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  fsl_ssi_stats_fops ; 

void FUNC3(struct fsl_ssi_dbg *ssi_dbg, struct device *dev)
{
	ssi_dbg->dbg_dir = FUNC0(FUNC2(dev), NULL);

	FUNC1("stats", 0444, ssi_dbg->dbg_dir, ssi_dbg,
			    &fsl_ssi_stats_fops);
}