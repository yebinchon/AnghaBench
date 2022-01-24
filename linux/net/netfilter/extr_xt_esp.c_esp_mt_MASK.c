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
struct xt_esp {int invflags; int /*<<< orphan*/ * spis; } ;
struct xt_action_param {scalar_t__ fragoff; int hotdrop; int /*<<< orphan*/  thoff; struct xt_esp* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ip_esp_hdr {int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  _esp ;

/* Variables and functions */
 int XT_ESP_INV_SPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct ip_esp_hdr* FUNC2 (struct sk_buff const*,int /*<<< orphan*/ ,int,struct ip_esp_hdr*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct ip_esp_hdr *eh;
	struct ip_esp_hdr _esp;
	const struct xt_esp *espinfo = par->matchinfo;

	/* Must not be a fragment. */
	if (par->fragoff != 0)
		return false;

	eh = FUNC2(skb, par->thoff, sizeof(_esp), &_esp);
	if (eh == NULL) {
		/* We've been asked to examine this packet, and we
		 * can't.  Hence, no choice but to drop.
		 */
		FUNC1("Dropping evil ESP tinygram.\n");
		par->hotdrop = true;
		return false;
	}

	return FUNC3(espinfo->spis[0], espinfo->spis[1], FUNC0(eh->spi),
			 !!(espinfo->invflags & XT_ESP_INV_SPI));
}