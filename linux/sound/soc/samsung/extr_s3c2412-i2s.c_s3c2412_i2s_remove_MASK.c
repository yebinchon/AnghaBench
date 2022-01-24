#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  iis_cclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ s3c2412_i2s ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai)
{
	FUNC0(s3c2412_i2s.iis_cclk);
	FUNC1(dai, &s3c2412_i2s);

	return 0;
}