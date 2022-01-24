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
typedef  int /*<<< orphan*/  u32 ;
struct fsi_priv {int /*<<< orphan*/  capture; int /*<<< orphan*/  playback; } ;
struct fsi_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsi_master* FUNC2 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  int_st ; 

__attribute__((used)) static void FUNC4(struct fsi_priv *fsi)
{
	u32 data = 0;
	struct fsi_master *master = FUNC2(fsi);

	data |= FUNC0(1, FUNC3(fsi, &fsi->playback));
	data |= FUNC0(1, FUNC3(fsi, &fsi->capture));

	/* clear interrupt factor */
	FUNC1(master, int_st, data, 0);
}