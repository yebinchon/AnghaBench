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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_ice1712 *ice, int activate)
{
	struct hoontech_spec *spec = ice->spec;
	FUNC1(&ice->gpio_mutex);
	FUNC0(spec->boxbits, activate);
	FUNC3(ice, spec->boxbits[3]);
	FUNC2(&ice->gpio_mutex);
}