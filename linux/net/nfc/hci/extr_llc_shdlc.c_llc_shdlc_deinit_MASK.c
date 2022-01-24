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
struct nfc_llc {int dummy; } ;
struct llc_shdlc {int /*<<< orphan*/  ack_pending_q; int /*<<< orphan*/  send_q; int /*<<< orphan*/  rcv_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct llc_shdlc*) ; 
 struct llc_shdlc* FUNC1 (struct nfc_llc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nfc_llc *llc)
{
	struct llc_shdlc *shdlc = FUNC1(llc);

	FUNC2(&shdlc->rcv_q);
	FUNC2(&shdlc->send_q);
	FUNC2(&shdlc->ack_pending_q);

	FUNC0(shdlc);
}