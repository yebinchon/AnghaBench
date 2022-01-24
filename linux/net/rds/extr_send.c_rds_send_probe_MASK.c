#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_10__ {int /*<<< orphan*/  h_flags; } ;
struct TYPE_9__ {TYPE_4__ i_hdr; struct rds_conn_path* i_conn_path; TYPE_6__* i_conn; } ;
struct TYPE_7__ {int op_active; } ;
struct rds_message {TYPE_3__ m_inc; int /*<<< orphan*/  m_flags; int /*<<< orphan*/  m_conn_item; TYPE_1__ data; int /*<<< orphan*/  m_daddr; } ;
struct rds_conn_path {int /*<<< orphan*/  cp_send_w; TYPE_6__* cp_conn; int /*<<< orphan*/  cp_lock; int /*<<< orphan*/  cp_next_tx_seq; int /*<<< orphan*/  cp_send_queue; } ;
typedef  int /*<<< orphan*/  npaths ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_11__ {int /*<<< orphan*/  c_my_gen_num; TYPE_2__* c_trans; int /*<<< orphan*/  c_fcong; int /*<<< orphan*/  c_faddr; } ;
struct TYPE_8__ {scalar_t__ t_mp_capable; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RDS_EXTHDR_GEN_NUM ; 
 int /*<<< orphan*/  RDS_EXTHDR_NPATHS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDS_MPATH_WORKERS ; 
 int /*<<< orphan*/  RDS_MSG_ON_CONN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rds_conn_path*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rds_message*) ; 
 struct rds_message* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rds_message*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  s_send_pong ; 
 int /*<<< orphan*/  s_send_queued ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC20(struct rds_conn_path *cp, __be16 sport,
	       __be16 dport, u8 h_flags)
{
	struct rds_message *rm;
	unsigned long flags;
	int ret = 0;

	rm = FUNC13(0, GFP_ATOMIC);
	if (!rm) {
		ret = -ENOMEM;
		goto out;
	}

	rm->m_daddr = cp->cp_conn->c_faddr;
	rm->data.op_active = 1;

	FUNC9(cp);

	ret = FUNC8(cp->cp_conn->c_fcong, dport, 1, NULL);
	if (ret)
		goto out;

	FUNC18(&cp->cp_lock, flags);
	FUNC4(&rm->m_conn_item, &cp->cp_send_queue);
	FUNC17(RDS_MSG_ON_CONN, &rm->m_flags);
	FUNC12(rm);
	rm->m_inc.i_conn = cp->cp_conn;
	rm->m_inc.i_conn_path = cp;

	FUNC14(&rm->m_inc.i_hdr, sport, dport,
				    cp->cp_next_tx_seq);
	rm->m_inc.i_hdr.h_flags |= h_flags;
	cp->cp_next_tx_seq++;

	if (FUNC0(FUNC1(sport), FUNC1(dport)) &&
	    cp->cp_conn->c_trans->t_mp_capable) {
		u16 npaths = FUNC2(RDS_MPATH_WORKERS);
		u32 my_gen_num = FUNC3(cp->cp_conn->c_my_gen_num);

		FUNC11(&rm->m_inc.i_hdr,
					  RDS_EXTHDR_NPATHS, &npaths,
					  sizeof(npaths));
		FUNC11(&rm->m_inc.i_hdr,
					  RDS_EXTHDR_GEN_NUM,
					  &my_gen_num,
					  sizeof(u32));
	}
	FUNC19(&cp->cp_lock, flags);

	FUNC16(s_send_queued);
	FUNC16(s_send_pong);

	/* schedule the send work on rds_wq */
	FUNC6();
	if (!FUNC10(cp->cp_conn))
		FUNC5(rds_wq, &cp->cp_send_w, 1);
	FUNC7();

	FUNC15(rm);
	return 0;

out:
	if (rm)
		FUNC15(rm);
	return ret;
}