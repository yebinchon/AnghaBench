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
struct snd_card {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct snd_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*) ; 

__attribute__((used)) static int FUNC2(struct device *devptr, unsigned int dev)
{
	struct snd_card *card = FUNC0(devptr);

	FUNC1(card);
	return 0;
}