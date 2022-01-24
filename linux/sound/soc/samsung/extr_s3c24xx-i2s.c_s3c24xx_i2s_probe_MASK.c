#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ regs; int /*<<< orphan*/  iis_clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ S3C2410_IISCON ; 
 int /*<<< orphan*/  S3C2410_IISCON_IISEN ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_NONE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__ s3c24xx_i2s ; 
 int /*<<< orphan*/  s3c24xx_i2s_pcm_stereo_in ; 
 int /*<<< orphan*/  s3c24xx_i2s_pcm_stereo_out ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct snd_soc_dai *dai)
{
	int ret;
	FUNC10(dai, &s3c24xx_i2s_pcm_stereo_out,
					&s3c24xx_i2s_pcm_stereo_in);

	s3c24xx_i2s.iis_clk = FUNC5(dai->dev, "iis");
	if (FUNC0(s3c24xx_i2s.iis_clk)) {
		FUNC6("failed to get iis_clock\n");
		return FUNC1(s3c24xx_i2s.iis_clk);
	}
	ret = FUNC4(s3c24xx_i2s.iis_clk);
	if (ret)
		return ret;

	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
	FUNC9(FUNC2(0), 5, FUNC3(2),
			      S3C_GPIO_PULL_NONE);

	FUNC11(S3C2410_IISCON_IISEN, s3c24xx_i2s.regs + S3C2410_IISCON);

	FUNC8(0);
	FUNC7(0);

	return 0;
}