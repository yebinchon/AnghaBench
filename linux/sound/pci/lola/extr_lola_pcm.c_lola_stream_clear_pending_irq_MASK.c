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
 unsigned int LOLA_DSD_STS_BCIS ; 
 unsigned int LOLA_DSD_STS_DESE ; 
 int /*<<< orphan*/  STS ; 
 unsigned int FUNC0 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct lola *chip,
					  struct lola_stream *str)
{
	unsigned int val = FUNC0(chip, str->dsd, STS);
	val &= LOLA_DSD_STS_DESE | LOLA_DSD_STS_BCIS;
	if (val)
		FUNC1(chip, str->dsd, STS, val);
}