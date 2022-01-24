#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct rxrpc_crypt {int /*<<< orphan*/  x; } ;
struct rxrpc_connection {TYPE_1__* cipher; } ;
struct rxkad_response {int /*<<< orphan*/  encrypted; } ;
struct rxkad_key {int /*<<< orphan*/  session_key; } ;
typedef  int /*<<< orphan*/  iv ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_crypt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 struct skcipher_request* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_request*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct rxrpc_connection *conn,
				  struct rxkad_response *resp,
				  const struct rxkad_key *s2)
{
	struct skcipher_request *req;
	struct rxrpc_crypt iv;
	struct scatterlist sg[1];

	req = FUNC4(&conn->cipher->base, GFP_NOFS);
	if (!req)
		return -ENOMEM;

	/* continue encrypting from where we left off */
	FUNC1(&iv, s2->session_key, sizeof(iv));

	FUNC2(sg, 1);
	FUNC3(sg, &resp->encrypted, sizeof(resp->encrypted));
	FUNC8(req, conn->cipher);
	FUNC6(req, 0, NULL, NULL);
	FUNC7(req, sg, sg, sizeof(resp->encrypted), iv.x);
	FUNC0(req);
	FUNC5(req);
	return 0;
}