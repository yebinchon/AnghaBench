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
struct cfsrvl {int /*<<< orphan*/  layer; int /*<<< orphan*/  (* release ) (int /*<<< orphan*/ *) ;} ;
struct cflayer {int /*<<< orphan*/ * dn; } ;

/* Variables and functions */
 struct cfsrvl* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct cflayer *adap_layer)
{
	struct cfsrvl *servl;
	if (adap_layer == NULL || adap_layer->dn == NULL)
		return;
	servl = FUNC0(adap_layer->dn);
	servl->release(&servl->layer);
}