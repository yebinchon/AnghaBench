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
struct nfc_protocol {size_t id; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** proto_tab ; 
 int /*<<< orphan*/  proto_tab_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(const struct nfc_protocol *nfc_proto)
{
	FUNC1(&proto_tab_lock);
	proto_tab[nfc_proto->id] = NULL;
	FUNC2(&proto_tab_lock);

	FUNC0(nfc_proto->proto);
}