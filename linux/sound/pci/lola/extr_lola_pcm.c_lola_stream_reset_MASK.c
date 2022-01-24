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
struct lola_stream {int /*<<< orphan*/  dsd; scalar_t__ prepared; int /*<<< orphan*/  substream; scalar_t__ paused; } ;
struct lola {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDPL ; 
 int /*<<< orphan*/  BDPU ; 
 int /*<<< orphan*/  CTL ; 
 int LOLA_DSD_CTL_DEIE ; 
 int LOLA_DSD_CTL_IOCE ; 
 int LOLA_DSD_CTL_SRST ; 
 int /*<<< orphan*/  LVI ; 
 int /*<<< orphan*/  FUNC0 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lola*,struct lola_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct lola*,struct lola_stream*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lola*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lola*,struct lola_stream*) ; 

__attribute__((used)) static void FUNC5(struct lola *chip, struct lola_stream *str)
{
	if (str->prepared) {
		if (str->paused)
			FUNC3(chip, str->substream);
		str->prepared = 0;
		FUNC0(chip, str->dsd, CTL,
			       LOLA_DSD_CTL_IOCE | LOLA_DSD_CTL_DEIE);
		FUNC2(chip, str, false);
		FUNC1(chip, str);
		FUNC0(chip, str->dsd, CTL, LOLA_DSD_CTL_SRST);
		FUNC0(chip, str->dsd, LVI, 0);
		FUNC0(chip, str->dsd, BDPU, 0);
		FUNC0(chip, str->dsd, BDPL, 0);
		FUNC4(chip, str);
	}
}