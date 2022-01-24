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
struct fsi_priv {int dummy; } ;
struct fsi_master {int dummy; } ;

/* Variables and functions */
 int BP ; 
 int SE ; 
 int /*<<< orphan*/  a_mclk ; 
 int /*<<< orphan*/  b_mclk ; 
 int /*<<< orphan*/  FUNC0 (struct fsi_master*,int /*<<< orphan*/ ,int,int) ; 
 struct fsi_master* FUNC1 (struct fsi_priv*) ; 
 scalar_t__ FUNC2 (struct fsi_priv*) ; 

__attribute__((used)) static void FUNC3(struct fsi_priv *fsi, int enable)
{
	struct fsi_master *master = FUNC1(fsi);
	u32 mask, val;

	mask = BP | SE;
	val = enable ? mask : 0;

	FUNC2(fsi) ?
		FUNC0(master, a_mclk, mask, val) :
		FUNC0(master, b_mclk, mask, val);
}