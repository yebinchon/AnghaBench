#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* dn; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_1__ layer; int /*<<< orphan*/  dev_info; } ;
struct cfrfml {scalar_t__ fragment_size; TYPE_2__ serv; } ;
struct cfpkt {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * dev_info; scalar_t__ hdr_len; int /*<<< orphan*/  channel_id; } ;
struct TYPE_7__ {int (* transmit ) (TYPE_3__*,struct cfpkt*) ;} ;

/* Variables and functions */
 scalar_t__ RFM_HEAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct cfpkt*) ; 
 TYPE_4__* FUNC2 (struct cfpkt*) ; 
 int FUNC3 (TYPE_3__*,struct cfpkt*) ; 

__attribute__((used)) static int FUNC4(struct cfrfml *rfml, struct cfpkt *pkt)
{
	FUNC0(FUNC1(pkt) < rfml->fragment_size + RFM_HEAD_SIZE);

	/* Add info for MUX-layer to route the packet out. */
	FUNC2(pkt)->channel_id = rfml->serv.layer.id;

	/*
	 * To optimize alignment, we add up the size of CAIF header before
	 * payload.
	 */
	FUNC2(pkt)->hdr_len = RFM_HEAD_SIZE;
	FUNC2(pkt)->dev_info = &rfml->serv.dev_info;

	return rfml->serv.layer.dn->transmit(rfml->serv.layer.dn, pkt);
}