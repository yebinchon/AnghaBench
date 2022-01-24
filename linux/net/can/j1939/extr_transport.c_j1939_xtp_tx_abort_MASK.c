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
typedef  int u8 ;
struct j1939_sk_buff_cb {int dummy; } ;
struct j1939_priv {int dummy; } ;
typedef  int /*<<< orphan*/  pgn_t ;
typedef  enum j1939_xtp_abort { ____Placeholder_j1939_xtp_abort } j1939_xtp_abort ;
typedef  int /*<<< orphan*/  dat ;

/* Variables and functions */
 int J1939_TP_CMD_ABORT ; 
 int /*<<< orphan*/  FUNC0 (struct j1939_sk_buff_cb const*,int) ; 
 int FUNC1 (struct j1939_priv*,struct j1939_sk_buff_cb const*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 

__attribute__((used)) static int FUNC3(struct j1939_priv *priv,
			      const struct j1939_sk_buff_cb *re_skcb,
			      bool swap_src_dst,
			      enum j1939_xtp_abort err,
			      pgn_t pgn)
{
	u8 dat[5];

	if (!FUNC0(re_skcb, swap_src_dst))
		return 0;

	FUNC2(dat, 0xff, sizeof(dat));
	dat[0] = J1939_TP_CMD_ABORT;
	dat[1] = err;
	return FUNC1(priv, re_skcb, swap_src_dst, pgn, dat);
}