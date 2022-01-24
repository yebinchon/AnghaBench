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
typedef  int /*<<< orphan*/  u8 ;
struct rfcomm_session {scalar_t__ cfc; int /*<<< orphan*/  initiator; } ;
struct rfcomm_pn {int flow_ctrl; void* mtu; scalar_t__ credits; scalar_t__ max_retrans; scalar_t__ ack_timer; int /*<<< orphan*/  priority; int /*<<< orphan*/  dlci; } ;
struct rfcomm_mcc {void* len; int /*<<< orphan*/  type; } ;
struct rfcomm_hdr {void* len; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  addr; } ;
struct rfcomm_dlc {scalar_t__ mtu; int /*<<< orphan*/  priority; int /*<<< orphan*/  dlci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ RFCOMM_DEFAULT_CREDITS ; 
 int /*<<< orphan*/  RFCOMM_PN ; 
 int /*<<< orphan*/  RFCOMM_UIH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ channel_mtu ; 
 void* FUNC6 (scalar_t__) ; 
 int FUNC7 (struct rfcomm_session*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct rfcomm_session *s, int cr, struct rfcomm_dlc *d)
{
	struct rfcomm_hdr *hdr;
	struct rfcomm_mcc *mcc;
	struct rfcomm_pn  *pn;
	u8 buf[16], *ptr = buf;

	FUNC0("%p cr %d dlci %d mtu %d", s, cr, d->dlci, d->mtu);

	hdr = (void *) ptr; ptr += sizeof(*hdr);
	hdr->addr = FUNC1(s->initiator, 0);
	hdr->ctrl = FUNC2(RFCOMM_UIH, 0);
	hdr->len  = FUNC4(sizeof(*mcc) + sizeof(*pn));

	mcc = (void *) ptr; ptr += sizeof(*mcc);
	mcc->type = FUNC5(cr, RFCOMM_PN);
	mcc->len  = FUNC4(sizeof(*pn));

	pn = (void *) ptr; ptr += sizeof(*pn);
	pn->dlci        = d->dlci;
	pn->priority    = d->priority;
	pn->ack_timer   = 0;
	pn->max_retrans = 0;

	if (s->cfc) {
		pn->flow_ctrl = cr ? 0xf0 : 0xe0;
		pn->credits = RFCOMM_DEFAULT_CREDITS;
	} else {
		pn->flow_ctrl = 0;
		pn->credits   = 0;
	}

	if (cr && channel_mtu >= 0)
		pn->mtu = FUNC6(channel_mtu);
	else
		pn->mtu = FUNC6(d->mtu);

	*ptr = FUNC3(buf); ptr++;

	return FUNC7(s, buf, ptr - buf);
}