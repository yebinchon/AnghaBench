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
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct rxrpc_crypt {int /*<<< orphan*/  x; int /*<<< orphan*/ * n; } ;
struct rxrpc_connection {int dummy; } ;
struct rxkad_response {int /*<<< orphan*/  encrypted; } ;
typedef  int /*<<< orphan*/  iv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct skcipher_request*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_crypt*,struct rxrpc_crypt const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxkad_ci ; 
 int /*<<< orphan*/  rxkad_ci_mutex ; 
 struct skcipher_request* rxkad_ci_req ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct skcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct skcipher_request*) ; 

__attribute__((used)) static void FUNC15(struct rxrpc_connection *conn,
				   struct rxkad_response *resp,
				   const struct rxrpc_crypt *session_key)
{
	struct skcipher_request *req = rxkad_ci_req;
	struct scatterlist sg[1];
	struct rxrpc_crypt iv;

	FUNC1(",,%08x%08x",
	       FUNC8(session_key->n[0]), FUNC8(session_key->n[1]));

	FUNC6(&rxkad_ci_mutex);
	if (FUNC4(rxkad_ci, session_key->x,
					sizeof(*session_key)) < 0)
		FUNC0();

	FUNC5(&iv, session_key, sizeof(iv));

	FUNC9(sg, 1);
	FUNC10(sg, &resp->encrypted, sizeof(resp->encrypted));
	FUNC13(req, rxkad_ci);
	FUNC11(req, 0, NULL, NULL);
	FUNC12(req, sg, sg, sizeof(resp->encrypted), iv.x);
	FUNC3(req);
	FUNC14(req);

	FUNC7(&rxkad_ci_mutex);

	FUNC2("");
}