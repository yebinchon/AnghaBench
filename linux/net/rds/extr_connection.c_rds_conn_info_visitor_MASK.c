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
struct rds_info_connection {scalar_t__ flags; int /*<<< orphan*/  transport; int /*<<< orphan*/  tos; int /*<<< orphan*/  faddr; int /*<<< orphan*/  laddr; int /*<<< orphan*/  next_rx_seq; int /*<<< orphan*/  next_tx_seq; } ;
struct TYPE_5__ {int /*<<< orphan*/ * s6_addr32; } ;
struct TYPE_4__ {int /*<<< orphan*/ * s6_addr32; } ;
struct rds_connection {TYPE_3__* c_trans; int /*<<< orphan*/  c_tos; TYPE_2__ c_faddr; TYPE_1__ c_laddr; scalar_t__ c_isv6; } ;
struct rds_conn_path {int /*<<< orphan*/  cp_state; int /*<<< orphan*/  cp_flags; int /*<<< orphan*/  cp_next_rx_seq; int /*<<< orphan*/  cp_next_tx_seq; struct rds_connection* cp_conn; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTED ; 
 int /*<<< orphan*/  CONNECTING ; 
 scalar_t__ RDS_CONN_CONNECTING ; 
 scalar_t__ RDS_CONN_UP ; 
 int /*<<< orphan*/  RDS_IN_XMIT ; 
 int /*<<< orphan*/  SENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct rds_conn_path *cp, void *buffer)
{
	struct rds_info_connection *cinfo = buffer;
	struct rds_connection *conn = cp->cp_conn;

	if (conn->c_isv6)
		return 0;

	cinfo->next_tx_seq = cp->cp_next_tx_seq;
	cinfo->next_rx_seq = cp->cp_next_rx_seq;
	cinfo->laddr = conn->c_laddr.s6_addr32[3];
	cinfo->faddr = conn->c_faddr.s6_addr32[3];
	cinfo->tos = conn->c_tos;
	FUNC2(cinfo->transport, conn->c_trans->t_name,
		sizeof(cinfo->transport));
	cinfo->flags = 0;

	FUNC1(cinfo->flags, FUNC3(RDS_IN_XMIT, &cp->cp_flags),
			  SENDING);
	/* XXX Future: return the state rather than these funky bits */
	FUNC1(cinfo->flags,
			  FUNC0(&cp->cp_state) == RDS_CONN_CONNECTING,
			  CONNECTING);
	FUNC1(cinfo->flags,
			  FUNC0(&cp->cp_state) == RDS_CONN_UP,
			  CONNECTED);
	return 1;
}