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
typedef  int /*<<< orphan*/  u32 ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static inline u32 FUNC2(struct snd_sof_dev *sdev, int sample_bits)
{
	switch (sample_bits) {
	case 8:
		return FUNC0(0);
	case 16:
		return FUNC0(1);
	case 20:
		return FUNC0(2);
	case 24:
		return FUNC0(3);
	case 32:
		return FUNC0(4);
	default:
		FUNC1(sdev->dev, "can't find %d bits using 16bit\n",
			 sample_bits);
		return FUNC0(1); /* use 16bits format if not found */
	}
}