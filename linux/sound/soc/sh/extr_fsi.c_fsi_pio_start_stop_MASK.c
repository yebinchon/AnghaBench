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
struct fsi_stream {int dummy; } ;
struct fsi_priv {int dummy; } ;
struct fsi_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_RST ; 
 int /*<<< orphan*/  CRA ; 
 int /*<<< orphan*/  CRB ; 
 struct fsi_master* FUNC0 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_priv*,struct fsi_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_priv*,struct fsi_stream*) ; 
 scalar_t__ FUNC3 (struct fsi_priv*) ; 
 scalar_t__ FUNC4 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsi_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fsi_priv *fsi, struct fsi_stream *io,
			       int enable)
{
	struct fsi_master *master = FUNC0(fsi);
	u32 clk  = FUNC4(fsi) ? CRA  : CRB;

	if (enable)
		FUNC2(fsi, io);
	else
		FUNC1(fsi, io);

	if (FUNC3(fsi))
		FUNC5(master, CLK_RST, clk, (enable) ? clk : 0);

	return 0;
}