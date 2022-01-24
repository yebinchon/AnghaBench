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
struct snd_cmi8328 {int /*<<< orphan*/  port; scalar_t__ gameport; } ;
struct snd_card {struct snd_cmi8328* private_data; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG1 ; 
 int /*<<< orphan*/  CFG1_SB_DISABLE ; 
 int /*<<< orphan*/  CFG2 ; 
 int /*<<< orphan*/  CFG3 ; 
 struct snd_card* FUNC0 (struct device*) ; 
 struct resource* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *pdev, unsigned int dev)
{
	struct snd_card *card = FUNC0(pdev);
	struct snd_cmi8328 *cmi = card->private_data;

#ifdef SUPPORT_JOYSTICK
	if (cmi->gameport) {
		struct resource *res = gameport_get_port_data(cmi->gameport);
		gameport_unregister_port(cmi->gameport);
		release_and_free_resource(res);
	}
#endif
	/* disable everything */
	FUNC5(cmi->port, CFG1, CFG1_SB_DISABLE);
	FUNC5(cmi->port, CFG2, 0);
	FUNC5(cmi->port, CFG3, 0);
	FUNC4(card);
	return 0;
}