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
struct au1xpsc_audio_data {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct au1xpsc_audio_data*) ; 
 unsigned long PSC_I2SSTAT_RB ; 
 unsigned long PSC_I2SSTAT_TB ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct au1xpsc_audio_data *pscdata, int stype)
{
	unsigned long tmo, stat;
	int ret;

	ret = 0;

	/* if both TX and RX are idle, configure the PSC  */
	stat = FUNC6(FUNC5(pscdata));
	if (!(stat & (PSC_I2SSTAT_TB | PSC_I2SSTAT_RB))) {
		ret = FUNC8(pscdata);
		if (ret)
			goto out;
	}

	FUNC7(FUNC0(stype), FUNC4(pscdata));
	FUNC9(); /* drain writebuffer */
	FUNC7(FUNC1(stype), FUNC4(pscdata));
	FUNC9(); /* drain writebuffer */

	/* wait for start confirmation */
	tmo = 1000000;
	while (!(FUNC6(FUNC5(pscdata)) & FUNC3(stype)) && tmo)
		tmo--;

	if (!tmo) {
		FUNC7(FUNC2(stype), FUNC4(pscdata));
		FUNC9(); /* drain writebuffer */
		ret = -ETIMEDOUT;
	}
out:
	return ret;
}