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
typedef  scalar_t__ u32 ;
struct fsi_stream {int /*<<< orphan*/  chan; } ;
struct fsi_priv {int dummy; } ;
struct fsi_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_RST ; 
 scalar_t__ CRA ; 
 scalar_t__ CRB ; 
 scalar_t__ DMA_ON ; 
 int /*<<< orphan*/  OUT_DMAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct fsi_master* FUNC1 (struct fsi_priv*) ; 
 scalar_t__ FUNC2 (struct fsi_priv*) ; 
 scalar_t__ FUNC3 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsi_master*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct fsi_priv*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct fsi_priv *fsi, struct fsi_stream *io,
				 int start)
{
	struct fsi_master *master = FUNC1(fsi);
	u32 clk  = FUNC3(fsi) ? CRA  : CRB;
	u32 enable = start ? DMA_ON : 0;

	FUNC5(fsi, OUT_DMAC, DMA_ON, enable);

	FUNC0(io->chan);

	if (FUNC2(fsi))
		FUNC4(master, CLK_RST, clk, (enable) ? clk : 0);

	return 0;
}