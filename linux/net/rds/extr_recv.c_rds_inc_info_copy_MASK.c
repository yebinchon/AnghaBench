#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rds_info_message {scalar_t__ flags; int /*<<< orphan*/  fport; int /*<<< orphan*/  lport; void* faddr; void* laddr; int /*<<< orphan*/  tos; int /*<<< orphan*/  len; int /*<<< orphan*/  seq; } ;
struct rds_info_iterator {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_dport; int /*<<< orphan*/  h_sport; int /*<<< orphan*/  h_len; int /*<<< orphan*/  h_sequence; } ;
struct rds_incoming {TYPE_2__ i_hdr; TYPE_1__* i_conn; } ;
typedef  int /*<<< orphan*/  minfo ;
typedef  void* __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  c_tos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_info_iterator*,struct rds_info_message*,int) ; 

void FUNC3(struct rds_incoming *inc,
		       struct rds_info_iterator *iter,
		       __be32 saddr, __be32 daddr, int flip)
{
	struct rds_info_message minfo;

	minfo.seq = FUNC1(inc->i_hdr.h_sequence);
	minfo.len = FUNC0(inc->i_hdr.h_len);
	minfo.tos = inc->i_conn->c_tos;

	if (flip) {
		minfo.laddr = daddr;
		minfo.faddr = saddr;
		minfo.lport = inc->i_hdr.h_dport;
		minfo.fport = inc->i_hdr.h_sport;
	} else {
		minfo.laddr = saddr;
		minfo.faddr = daddr;
		minfo.lport = inc->i_hdr.h_sport;
		minfo.fport = inc->i_hdr.h_dport;
	}

	minfo.flags = 0;

	FUNC2(iter, &minfo, sizeof(minfo));
}