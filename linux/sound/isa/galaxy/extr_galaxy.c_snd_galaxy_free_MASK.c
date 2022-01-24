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
struct snd_galaxy {int /*<<< orphan*/  res_port; scalar_t__ port; int /*<<< orphan*/  res_config_port; scalar_t__ config_port; int /*<<< orphan*/  config; int /*<<< orphan*/  res_wss_port; scalar_t__ wss_port; } ;
struct snd_card {struct snd_galaxy* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_galaxy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_card *card)
{
	struct snd_galaxy *galaxy = card->private_data;

	if (galaxy->wss_port) {
		FUNC3(galaxy->wss_port, 0);
		FUNC1(galaxy->wss_port);
		FUNC2(galaxy->res_wss_port);
	}
	if (galaxy->config_port) {
		FUNC0(galaxy, galaxy->config);
		FUNC1(galaxy->config_port);
		FUNC2(galaxy->res_config_port);
	}
	if (galaxy->port) {
		FUNC1(galaxy->port);
		FUNC2(galaxy->res_port);
	}
}