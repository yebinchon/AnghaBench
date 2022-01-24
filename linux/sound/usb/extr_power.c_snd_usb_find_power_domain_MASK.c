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
struct usb_host_interface {int /*<<< orphan*/  extralen; int /*<<< orphan*/  extra; } ;
struct uac3_power_domain_descriptor {int bNrEntities; unsigned char* baEntityID; int /*<<< orphan*/  waRecoveryTime2; int /*<<< orphan*/  waRecoveryTime1; int /*<<< orphan*/  bPowerDomainID; } ;
struct snd_usb_power_domain {void* pd_d2d0_rec; void* pd_d1d0_rec; int /*<<< orphan*/  pd_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UAC3_POWER_DOMAIN ; 
 int /*<<< orphan*/  UAC_VERSION_3 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_usb_power_domain*) ; 
 struct snd_usb_power_domain* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 

struct snd_usb_power_domain *
FUNC5(struct usb_host_interface *ctrl_iface,
			  unsigned char id)
{
	struct snd_usb_power_domain *pd;
	void *p;

	pd = FUNC1(sizeof(*pd), GFP_KERNEL);
	if (!pd)
		return NULL;

	p = NULL;
	while ((p = FUNC3(ctrl_iface->extra,
					    ctrl_iface->extralen,
					    p, UAC3_POWER_DOMAIN)) != NULL) {
		struct uac3_power_domain_descriptor *pd_desc = p;
		int i;

		if (!FUNC4(p, UAC_VERSION_3))
			continue;
		for (i = 0; i < pd_desc->bNrEntities; i++) {
			if (pd_desc->baEntityID[i] == id) {
				pd->pd_id = pd_desc->bPowerDomainID;
				pd->pd_d1d0_rec =
					FUNC2(pd_desc->waRecoveryTime1);
				pd->pd_d2d0_rec =
					FUNC2(pd_desc->waRecoveryTime2);
				return pd;
			}
		}
	}

	FUNC0(pd);
	return NULL;
}