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
typedef  int u32 ;
struct sst_dsp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SST_IPCX ; 
 int SST_IPCX_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct sst_dsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct sst_dsp *dsp, u32 msg)
{
	FUNC0(dsp, SST_IPCX, msg | SST_IPCX_BUSY);
	FUNC1(msg);
}