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
struct fsi_priv {int fmt; int chan_num; } ;
struct fsi_master {int dummy; } ;

/* Variables and functions */
 int CR_DTMD_SPDIF_PCM ; 
 int CR_PCM ; 
 int EINVAL ; 
 struct fsi_master* FUNC0 (struct fsi_priv*) ; 
 int FUNC1 (struct fsi_master*) ; 

__attribute__((used)) static int FUNC2(struct fsi_priv *fsi)
{
	struct fsi_master *master = FUNC0(fsi);

	if (FUNC1(master) < 2)
		return -EINVAL;

	fsi->fmt = CR_DTMD_SPDIF_PCM | CR_PCM;
	fsi->chan_num = 2;

	return 0;
}