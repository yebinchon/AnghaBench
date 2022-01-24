#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_rme9652 {int hw_rev; int /*<<< orphan*/  card_name; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RME9652_ERF ; 
 int RME9652_F ; 
 int /*<<< orphan*/  RME9652_status_register ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct snd_rme9652*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_rme9652*,int) ; 

__attribute__((used)) static inline int FUNC4(struct snd_rme9652 *s)
{
	unsigned int rate_bits;

	if (FUNC2(s, RME9652_status_register) & RME9652_ERF) {
		return -1;	/* error condition */
	}
	
	if (s->hw_rev == 15) {

		int x, y, ret;
		
		x = FUNC3 (s, 30);

		if (x != 0) 
			y = 48000 * 64 / x;
		else
			y = 0;

		if      (y > 30400 && y < 33600)  ret = 32000; 
		else if (y > 41900 && y < 46000)  ret = 44100;
		else if (y > 46000 && y < 50400)  ret = 48000;
		else if (y > 60800 && y < 67200)  ret = 64000;
		else if (y > 83700 && y < 92000)  ret = 88200;
		else if (y > 92000 && y < 100000) ret = 96000;
		else                              ret = 0;
		return ret;
	}

	rate_bits = FUNC2(s, RME9652_status_register) & RME9652_F;

	switch (FUNC1(rate_bits)) {
	case 0x7:
		return 32000;
		break;

	case 0x6:
		return 44100;
		break;

	case 0x5:
		return 48000;
		break;

	case 0x4:
		return 88200;
		break;

	case 0x3:
		return 96000;
		break;

	case 0x0:
		return 64000;
		break;

	default:
		FUNC0(s->card->dev,
			"%s: unknown S/PDIF input rate (bits = 0x%x)\n",
			   s->card_name, rate_bits);
		return 0;
		break;
	}
}