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
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static inline u32 FUNC4(struct snd_sof_dev *sdev, int rate)
{
	switch (rate) {
	case 8000:
		return FUNC1(6);
	case 9600:
		return FUNC1(5);
	case 11025:
		return FUNC0(1) | FUNC1(4);
	case 16000:
		return FUNC1(3);
	case 22050:
		return FUNC0(1) | FUNC1(2);
	case 32000:
		return FUNC1(3) | FUNC2(2);
	case 44100:
		return FUNC0(1);
	case 48000:
		return 0;
	case 88200:
		return FUNC0(1) | FUNC2(2);
	case 96000:
		return FUNC2(2);
	case 176400:
		return FUNC0(1) | FUNC2(4);
	case 192000:
		return FUNC2(4);
	default:
		FUNC3(sdev->dev, "can't find div rate %d using 48kHz\n",
			 rate);
		return 0; /* use 48KHz if not found */
	}
}