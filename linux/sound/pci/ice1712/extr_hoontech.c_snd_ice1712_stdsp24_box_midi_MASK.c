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
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct snd_ice1712 *ice, int box, int master)
{
	struct hoontech_spec *spec = ice->spec;

	FUNC4(&ice->gpio_mutex);

	/* select box */
	FUNC0(spec->boxbits, box);
	FUNC6(ice, spec->boxbits[0]);

	FUNC2(spec->boxbits, 1);
	FUNC1(spec->boxbits, master);
	FUNC6(ice, spec->boxbits[2]);
	FUNC6(ice, spec->boxbits[3]);

	FUNC7(100);
	
	FUNC2(spec->boxbits, 0);
	FUNC6(ice, spec->boxbits[2]);
	
	FUNC3(10);
	
	FUNC2(spec->boxbits, 1);
	FUNC6(ice, spec->boxbits[2]);

	FUNC5(&ice->gpio_mutex);
}