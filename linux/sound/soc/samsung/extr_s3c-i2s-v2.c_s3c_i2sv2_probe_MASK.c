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
struct snd_soc_dai {struct device* dev; } ;
struct s3c_i2sv2_info {scalar_t__ regs; int /*<<< orphan*/  iis_pclk; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ S3C2412_IISMOD ; 
 unsigned int S3C2412_IISMOD_MODE_TXRX ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct s3c_i2sv2_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct s3c_i2sv2_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dai*,struct s3c_i2sv2_info*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

int FUNC9(struct snd_soc_dai *dai,
		    struct s3c_i2sv2_info *i2s,
		    unsigned long base)
{
	struct device *dev = dai->dev;
	unsigned int iismod;

	i2s->dev = dev;

	/* record our i2s structure for later use in the callbacks */
	FUNC7(dai, i2s);

	i2s->iis_pclk = FUNC1(dev, "iis");
	if (FUNC0(i2s->iis_pclk)) {
		FUNC3(dev, "failed to get iis_clock\n");
		return -ENOENT;
	}

	FUNC2(i2s->iis_pclk);

	/* Mark ourselves as in TXRX mode so we can run through our cleanup
	 * process without warnings. */
	iismod = FUNC4(i2s->regs + S3C2412_IISMOD);
	iismod |= S3C2412_IISMOD_MODE_TXRX;
	FUNC8(iismod, i2s->regs + S3C2412_IISMOD);
	FUNC6(i2s, 0);
	FUNC5(i2s, 0);

	return 0;
}