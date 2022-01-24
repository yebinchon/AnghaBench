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
struct lola_stream {int /*<<< orphan*/  dsd; } ;
struct lola {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL ; 
 unsigned int LOLA_DSD_CTL_DEIE ; 
 unsigned int LOLA_DSD_CTL_IOCE ; 
 unsigned int LOLA_DSD_CTL_SRUN ; 
 unsigned int LOLA_DSD_CTL_VLRCV ; 
 int /*<<< orphan*/  FUNC0 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct lola*,struct lola_stream*) ; 

__attribute__((used)) static void FUNC2(struct lola *chip, struct lola_stream *str,
			      unsigned int tstamp)
{
	FUNC1(chip, str);
	FUNC0(chip, str->dsd, CTL,
		       LOLA_DSD_CTL_SRUN |
		       LOLA_DSD_CTL_IOCE |
		       LOLA_DSD_CTL_DEIE |
		       LOLA_DSD_CTL_VLRCV |
		       tstamp);
}