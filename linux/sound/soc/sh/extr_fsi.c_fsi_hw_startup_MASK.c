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
struct fsi_stream {int sample_width; int /*<<< orphan*/  bus_option; } ;
struct fsi_priv {scalar_t__ lr_clk_inv; scalar_t__ bit_clk_inv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CKG1 ; 
 int /*<<< orphan*/  CKG2 ; 
 int DIMD ; 
 int DMMD ; 
 int DOMD ; 
 int /*<<< orphan*/  OUT_SEL ; 
 int FUNC1 (struct device*,struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_priv*,struct fsi_stream*,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_priv*,struct fsi_stream*,int,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsi_priv*,struct fsi_stream*) ; 
 scalar_t__ FUNC6 (struct fsi_priv*) ; 
 scalar_t__ FUNC7 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct fsi_priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct fsi_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct fsi_priv*,int) ; 

__attribute__((used)) static int FUNC11(struct fsi_priv *fsi,
			  struct fsi_stream *io,
			  struct device *dev)
{
	u32 data = 0;

	/* clock setting */
	if (FUNC6(fsi))
		data = DIMD | DOMD;

	FUNC8(fsi, CKG1, (DIMD | DOMD), data);

	/* clock inversion (CKG2) */
	data = 0;
	if (fsi->bit_clk_inv)
		data |= (1 << 0);
	if (fsi->lr_clk_inv)
		data |= (1 << 4);
	if (FUNC6(fsi))
		data <<= 8;
	FUNC9(fsi, CKG2, data);

	/* spdif ? */
	if (FUNC7(fsi)) {
		FUNC10(fsi, 1);
		FUNC8(fsi, OUT_SEL, DMMD, DMMD);
	}

	/*
	 * get bus settings
	 */
	data = 0;
	switch (io->sample_width) {
	case 2:
		data = FUNC0(16, io->bus_option);
		break;
	case 4:
		data = FUNC0(24, io->bus_option);
		break;
	}
	FUNC3(fsi, io, data, dev);

	/* irq clear */
	FUNC5(fsi, io);
	FUNC4(fsi);

	/* fifo init */
	FUNC2(fsi, io, dev);

	/* start master clock */
	if (FUNC6(fsi))
		return FUNC1(dev, fsi);

	return 0;
}