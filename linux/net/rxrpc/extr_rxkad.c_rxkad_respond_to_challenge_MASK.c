#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct rxrpc_wire_header {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  serial; } ;
struct rxrpc_skb_priv {TYPE_6__ hdr; } ;
struct rxrpc_key_token {TYPE_7__* kad; } ;
struct TYPE_13__ {scalar_t__ security_level; TYPE_9__* key; } ;
struct TYPE_12__ {scalar_t__ epoch; scalar_t__ cid; } ;
struct rxrpc_connection {scalar_t__ security_ix; TYPE_5__* channels; TYPE_3__ params; TYPE_2__ proto; int /*<<< orphan*/  debug_id; } ;
struct TYPE_14__ {void** call_id; void* level; void* inc_nonce; void* securityIndex; void* cid; void* epoch; } ;
struct rxkad_response {TYPE_4__ encrypted; void* ticket_len; void* kvno; void* version; } ;
struct rxkad_challenge {int /*<<< orphan*/  min_level; int /*<<< orphan*/  nonce; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  challenge ;
struct TYPE_11__ {struct rxrpc_key_token** data; } ;
struct TYPE_18__ {TYPE_1__ payload; } ;
struct TYPE_17__ {scalar_t__ kvno; scalar_t__ ticket_len; } ;
struct TYPE_15__ {scalar_t__ call_counter; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ RXKADEXPIRED ; 
 scalar_t__ RXKADINCONSISTENCY ; 
 scalar_t__ RXKADLEVELFAIL ; 
 scalar_t__ RXKADPACKETSHORT ; 
 scalar_t__ RXKAD_VERSION ; 
 scalar_t__ RX_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int FUNC4 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (struct rxkad_response*) ; 
 struct rxkad_response* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rxkad_response*) ; 
 int FUNC9 (struct rxrpc_connection*,struct rxkad_response*,TYPE_7__*) ; 
 int FUNC10 (struct rxrpc_connection*,TYPE_6__*,struct rxkad_response*,TYPE_7__*) ; 
 struct rxrpc_skb_priv* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int,struct rxkad_challenge*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC14 (char*) ; 

__attribute__((used)) static int FUNC15(struct rxrpc_connection *conn,
				      struct sk_buff *skb,
				      u32 *_abort_code)
{
	const struct rxrpc_key_token *token;
	struct rxkad_challenge challenge;
	struct rxkad_response *resp;
	struct rxrpc_skb_priv *sp = FUNC11(skb);
	const char *eproto;
	u32 version, nonce, min_level, abort_code;
	int ret;

	FUNC0("{%d,%x}", conn->debug_id, FUNC3(conn->params.key));

	eproto = FUNC14("chall_no_key");
	abort_code = RX_PROTOCOL_ERROR;
	if (!conn->params.key)
		goto protocol_error;

	abort_code = RXKADEXPIRED;
	ret = FUNC4(conn->params.key);
	if (ret < 0)
		goto other_error;

	eproto = FUNC14("chall_short");
	abort_code = RXKADPACKETSHORT;
	if (FUNC12(skb, sizeof(struct rxrpc_wire_header),
			  &challenge, sizeof(challenge)) < 0)
		goto protocol_error;

	version = FUNC7(challenge.version);
	nonce = FUNC7(challenge.nonce);
	min_level = FUNC7(challenge.min_level);

	FUNC1("Rx CHALLENGE %%%u { v=%u n=%u ml=%u }",
	       sp->hdr.serial, version, nonce, min_level);

	eproto = FUNC14("chall_ver");
	abort_code = RXKADINCONSISTENCY;
	if (version != RXKAD_VERSION)
		goto protocol_error;

	abort_code = RXKADLEVELFAIL;
	ret = -EACCES;
	if (conn->params.security_level < min_level)
		goto other_error;

	token = conn->params.key->payload.data[0];

	/* build the response packet */
	resp = FUNC6(sizeof(struct rxkad_response), GFP_NOFS);
	if (!resp)
		return -ENOMEM;

	resp->version			= FUNC2(RXKAD_VERSION);
	resp->encrypted.epoch		= FUNC2(conn->proto.epoch);
	resp->encrypted.cid		= FUNC2(conn->proto.cid);
	resp->encrypted.securityIndex	= FUNC2(conn->security_ix);
	resp->encrypted.inc_nonce	= FUNC2(nonce + 1);
	resp->encrypted.level		= FUNC2(conn->params.security_level);
	resp->kvno			= FUNC2(token->kad->kvno);
	resp->ticket_len		= FUNC2(token->kad->ticket_len);
	resp->encrypted.call_id[0]	= FUNC2(conn->channels[0].call_counter);
	resp->encrypted.call_id[1]	= FUNC2(conn->channels[1].call_counter);
	resp->encrypted.call_id[2]	= FUNC2(conn->channels[2].call_counter);
	resp->encrypted.call_id[3]	= FUNC2(conn->channels[3].call_counter);

	/* calculate the response checksum and then do the encryption */
	FUNC8(resp);
	ret = FUNC9(conn, resp, token->kad);
	if (ret == 0)
		ret = FUNC10(conn, &sp->hdr, resp, token->kad);
	FUNC5(resp);
	return ret;

protocol_error:
	FUNC13(NULL, sp->hdr.serial, eproto);
	ret = -EPROTO;
other_error:
	*_abort_code = abort_code;
	return ret;
}