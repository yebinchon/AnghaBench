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
typedef  int u16 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_conf_rsp {int /*<<< orphan*/  data; int /*<<< orphan*/  result; int /*<<< orphan*/  flags; int /*<<< orphan*/  scid; } ;
struct l2cap_conf_req {int dummy; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
struct l2cap_chan {scalar_t__ mode; int /*<<< orphan*/  conf_state; int /*<<< orphan*/  num_conf_req; int /*<<< orphan*/  num_conf_rsp; int /*<<< orphan*/  ident; int /*<<< orphan*/  hs_hcon; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  CONF_INPUT_DONE ; 
 int /*<<< orphan*/  CONF_LOC_CONF_PEND ; 
 int /*<<< orphan*/  CONF_OUTPUT_DONE ; 
 int /*<<< orphan*/  CONF_REM_CONF_PEND ; 
 int ECONNRESET ; 
 int EPROTO ; 
 int L2CAP_CONF_FLAG_CONTINUATION ; 
 int /*<<< orphan*/  L2CAP_CONF_MAX_CONF_RSP ; 
#define  L2CAP_CONF_PENDING 130 
 int /*<<< orphan*/  L2CAP_CONF_REQ ; 
#define  L2CAP_CONF_SUCCESS 129 
#define  L2CAP_CONF_UNACCEPT 128 
 int /*<<< orphan*/  L2CAP_DISC_REJ_TIMEOUT ; 
 scalar_t__ L2CAP_MODE_ERTM ; 
 scalar_t__ L2CAP_MODE_STREAMING ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_chan*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct l2cap_chan*) ; 
 struct l2cap_chan* FUNC11 (struct l2cap_conn*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct l2cap_conn*) ; 
 int FUNC13 (struct l2cap_chan*,int /*<<< orphan*/ ,int,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct l2cap_chan*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct l2cap_chan*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct l2cap_chan*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC20(struct l2cap_conn *conn,
				   struct l2cap_cmd_hdr *cmd, u16 cmd_len,
				   u8 *data)
{
	struct l2cap_conf_rsp *rsp = (struct l2cap_conf_rsp *)data;
	u16 scid, flags, result;
	struct l2cap_chan *chan;
	int len = cmd_len - sizeof(*rsp);
	int err = 0;

	if (cmd_len < sizeof(*rsp))
		return -EPROTO;

	scid   = FUNC1(rsp->scid);
	flags  = FUNC1(rsp->flags);
	result = FUNC1(rsp->result);

	FUNC0("scid 0x%4.4x flags 0x%2.2x result 0x%2.2x len %d", scid, flags,
	       result, len);

	chan = FUNC11(conn, scid);
	if (!chan)
		return 0;

	switch (result) {
	case L2CAP_CONF_SUCCESS:
		FUNC9(chan, rsp->data, len);
		FUNC4(CONF_REM_CONF_PEND, &chan->conf_state);
		break;

	case L2CAP_CONF_PENDING:
		FUNC17(CONF_REM_CONF_PEND, &chan->conf_state);

		if (FUNC19(CONF_LOC_CONF_PEND, &chan->conf_state)) {
			char buf[64];

			len = FUNC13(chan, rsp->data, len,
						   buf, sizeof(buf), &result);
			if (len < 0) {
				FUNC15(chan, ECONNRESET);
				goto done;
			}

			if (!chan->hs_hcon) {
				FUNC16(chan, buf, cmd->ident,
							0);
			} else {
				if (FUNC8(chan)) {
					FUNC3(chan);
					chan->ident = cmd->ident;
				}
			}
		}
		goto done;

	case L2CAP_CONF_UNACCEPT:
		if (chan->num_conf_rsp <= L2CAP_CONF_MAX_CONF_RSP) {
			char req[64];

			if (len > sizeof(req) - sizeof(struct l2cap_conf_req)) {
				FUNC15(chan, ECONNRESET);
				goto done;
			}

			/* throw out any old stored conf requests */
			result = L2CAP_CONF_SUCCESS;
			len = FUNC13(chan, rsp->data, len,
						   req, sizeof(req), &result);
			if (len < 0) {
				FUNC15(chan, ECONNRESET);
				goto done;
			}

			FUNC14(conn, FUNC12(conn),
				       L2CAP_CONF_REQ, len, req);
			chan->num_conf_req++;
			if (result != L2CAP_CONF_SUCCESS)
				goto done;
			break;
		}
		/* fall through */

	default:
		FUNC6(chan, ECONNRESET);

		FUNC2(chan, L2CAP_DISC_REJ_TIMEOUT);
		FUNC15(chan, ECONNRESET);
		goto done;
	}

	if (flags & L2CAP_CONF_FLAG_CONTINUATION)
		goto done;

	FUNC17(CONF_INPUT_DONE, &chan->conf_state);

	if (FUNC19(CONF_OUTPUT_DONE, &chan->conf_state)) {
		FUNC18(chan);

		if (chan->mode == L2CAP_MODE_ERTM ||
		    chan->mode == L2CAP_MODE_STREAMING)
			err = FUNC10(chan);

		if (err < 0)
			FUNC15(chan, -err);
		else
			FUNC5(chan);
	}

done:
	FUNC7(chan);
	return err;
}