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
struct snd_efw {int /*<<< orphan*/  card_index; } ;
struct snd_card {struct snd_efw* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devices_mutex ; 
 int /*<<< orphan*/  devices_used ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_efw*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_efw*) ; 

__attribute__((used)) static void
FUNC5(struct snd_card *card)
{
	struct snd_efw *efw = card->private_data;

	FUNC1(&devices_mutex);
	FUNC0(efw->card_index, devices_used);
	FUNC2(&devices_mutex);

	FUNC3(efw);
	FUNC4(efw);
}