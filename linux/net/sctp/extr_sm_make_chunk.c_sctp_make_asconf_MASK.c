#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union sctp_addr_param {int /*<<< orphan*/  serial; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin_family; } ;
union sctp_addr {TYPE_1__ v4; } ;
struct TYPE_6__ {void* v; } ;
struct TYPE_5__ {void* addip_hdr; } ;
struct sctp_chunk {TYPE_3__ param_hdr; TYPE_2__ subh; } ;
struct sctp_association {int /*<<< orphan*/  addip_serial; } ;
struct sctp_af {int (* to_addr_param ) (union sctp_addr*,union sctp_addr_param*) ;} ;
struct sctp_addiphdr {int /*<<< orphan*/  serial; } ;
typedef  int /*<<< orphan*/  asconf ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SCTP_CID_ASCONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct sctp_chunk*,int,union sctp_addr_param*) ; 
 struct sctp_af* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC3 (struct sctp_association*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (union sctp_addr*,union sctp_addr_param*) ; 

__attribute__((used)) static struct sctp_chunk *FUNC5(struct sctp_association *asoc,
					   union sctp_addr *addr,
					   int vparam_len)
{
	struct sctp_addiphdr asconf;
	struct sctp_chunk *retval;
	int length = sizeof(asconf) + vparam_len;
	union sctp_addr_param addrparam;
	int addrlen;
	struct sctp_af *af = FUNC2(addr->v4.sin_family);

	addrlen = af->to_addr_param(addr, &addrparam);
	if (!addrlen)
		return NULL;
	length += addrlen;

	/* Create the chunk.  */
	retval = FUNC3(asoc, SCTP_CID_ASCONF, 0, length,
				   GFP_ATOMIC);
	if (!retval)
		return NULL;

	asconf.serial = FUNC0(asoc->addip_serial++);

	retval->subh.addip_hdr =
		FUNC1(retval, sizeof(asconf), &asconf);
	retval->param_hdr.v =
		FUNC1(retval, addrlen, &addrparam);

	return retval;
}