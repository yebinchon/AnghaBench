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
struct snd_bebob {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAFFIRE_OFFSET_CLOCK_SOURCE ; 
 int FUNC0 (struct snd_bebob*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC1(struct snd_bebob *bebob, unsigned int *id)
{
	int err;
	u32 value;

	err = FUNC0(bebob, SAFFIRE_OFFSET_CLOCK_SOURCE, &value);
	if (err >= 0)
		*id = 0xff & value;

	return err;
}