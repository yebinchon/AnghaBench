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
struct nfc_llcp_local {int dummy; } ;
struct nfc_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfc_llcp_local*) ; 
 struct nfc_llcp_local* FUNC1 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_llcp_local*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct nfc_dev *dev)
{
	struct nfc_llcp_local *local = FUNC1(dev);

	if (local == NULL) {
		FUNC3("No such device\n");
		return;
	}

	FUNC0(local);

	FUNC2(local);
}