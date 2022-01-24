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
struct TYPE_2__ {int /*<<< orphan*/  itf; } ;
struct sockaddr_atmpvc {TYPE_1__ sap_addr; } ;
struct atm_dev {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  as_itf_notify ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sockaddr_atmpvc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(const struct atm_dev *dev)
{
	struct sockaddr_atmpvc pvc;

	pvc.sap_addr.itf = dev->number;
	FUNC0(NULL, as_itf_notify, NULL, &pvc, NULL);
}