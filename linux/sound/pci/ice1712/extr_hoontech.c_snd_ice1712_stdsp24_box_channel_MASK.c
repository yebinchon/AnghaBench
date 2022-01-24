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
struct snd_ice1712 {int /*<<< orphan*/  gpio_mutex; struct hoontech_spec* spec; } ;
struct hoontech_spec {int /*<<< orphan*/ * boxbits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct snd_ice1712 *ice, int box, int chn, int activate)
{
	struct hoontech_spec *spec = ice->spec;

	FUNC6(&ice->gpio_mutex);

	/* select box */
	FUNC0(spec->boxbits, box);
	FUNC8(ice, spec->boxbits[0]);

	/* prepare for write */
	if (chn == 3)
		FUNC4(spec->boxbits, 0);
	FUNC5(spec->boxbits, activate);
	FUNC8(ice, spec->boxbits[2]);
	FUNC8(ice, spec->boxbits[3]);

	FUNC1(spec->boxbits, 1);
	FUNC2(spec->boxbits, 1);
	FUNC3(spec->boxbits, 1);
	FUNC4(spec->boxbits, 1);
	FUNC8(ice, spec->boxbits[1]);
	FUNC8(ice, spec->boxbits[2]);
	FUNC9(100);
	if (chn == 3) {
		FUNC4(spec->boxbits, 0);
		FUNC8(ice, spec->boxbits[2]);
	} else {
		switch (chn) {
		case 0:	FUNC1(spec->boxbits, 0); break;
		case 1:	FUNC2(spec->boxbits, 0); break;
		case 2:	FUNC3(spec->boxbits, 0); break;
		}
		FUNC8(ice, spec->boxbits[1]);
	}
	FUNC9(100);
	FUNC1(spec->boxbits, 1);
	FUNC2(spec->boxbits, 1);
	FUNC3(spec->boxbits, 1);
	FUNC4(spec->boxbits, 1);
	FUNC8(ice, spec->boxbits[1]);
	FUNC8(ice, spec->boxbits[2]);
	FUNC9(100);

	FUNC5(spec->boxbits, 0);
	FUNC8(ice, spec->boxbits[2]);

	FUNC7(&ice->gpio_mutex);
}