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
struct snd_pcsp {int /*<<< orphan*/  input_dev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcsp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct snd_pcsp* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	struct snd_pcsp *chip = FUNC2(dev);
	FUNC1(chip->input_dev);
	FUNC0(chip);
	return 0;
}