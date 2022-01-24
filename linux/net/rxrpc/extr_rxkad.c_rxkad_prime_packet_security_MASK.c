#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct rxrpc_key_token {TYPE_4__* kad; } ;
struct rxrpc_crypt {int /*<<< orphan*/  x; } ;
struct TYPE_11__ {int /*<<< orphan*/  cid; int /*<<< orphan*/  epoch; } ;
struct TYPE_9__ {TYPE_2__* key; } ;
struct rxrpc_connection {struct rxrpc_crypt csum_iv; TYPE_6__* cipher; int /*<<< orphan*/  security_ix; TYPE_5__ proto; TYPE_3__ params; } ;
typedef  int /*<<< orphan*/  iv ;
typedef  scalar_t__ __be32 ;
struct TYPE_12__ {int /*<<< orphan*/  base; } ;
struct TYPE_10__ {scalar_t__* session_key; } ;
struct TYPE_7__ {struct rxrpc_key_token** data; } ;
struct TYPE_8__ {TYPE_1__ payload; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_request*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_crypt*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,scalar_t__*,size_t) ; 
 struct skcipher_request* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,TYPE_6__*) ; 

__attribute__((used)) static int FUNC13(struct rxrpc_connection *conn)
{
	struct skcipher_request *req;
	struct rxrpc_key_token *token;
	struct scatterlist sg;
	struct rxrpc_crypt iv;
	__be32 *tmpbuf;
	size_t tmpsize = 4 * sizeof(__be32);

	FUNC0("");

	if (!conn->params.key)
		return 0;

	tmpbuf = FUNC5(tmpsize, GFP_KERNEL);
	if (!tmpbuf)
		return -ENOMEM;

	req = FUNC8(&conn->cipher->base, GFP_NOFS);
	if (!req) {
		FUNC4(tmpbuf);
		return -ENOMEM;
	}

	token = conn->params.key->payload.data[0];
	FUNC6(&iv, token->kad->session_key, sizeof(iv));

	tmpbuf[0] = FUNC3(conn->proto.epoch);
	tmpbuf[1] = FUNC3(conn->proto.cid);
	tmpbuf[2] = 0;
	tmpbuf[3] = FUNC3(conn->security_ix);

	FUNC7(&sg, tmpbuf, tmpsize);
	FUNC12(req, conn->cipher);
	FUNC10(req, 0, NULL, NULL);
	FUNC11(req, &sg, &sg, tmpsize, iv.x);
	FUNC2(req);
	FUNC9(req);

	FUNC6(&conn->csum_iv, tmpbuf + 2, sizeof(conn->csum_iv));
	FUNC4(tmpbuf);
	FUNC1(" = 0");
	return 0;
}