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
typedef  int u32 ;
typedef  int u16 ;
struct skcipher_request {int dummy; } ;
struct sk_buff {int dummy; } ;
struct scatterlist {int dummy; } ;
struct TYPE_3__ {int seq; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_crypt {int /*<<< orphan*/  x; } ;
struct rxrpc_call {int call_id; TYPE_2__* conn; } ;
struct rxkad_level1_hdr {int /*<<< orphan*/  data_size; } ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_4__ {int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct rxkad_level1_hdr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_crypt*,int /*<<< orphan*/ ,int) ; 
 struct rxrpc_skb_priv* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC12(const struct rxrpc_call *call,
				    struct sk_buff *skb,
				    u32 data_size,
				    void *sechdr,
				    struct skcipher_request *req)
{
	struct rxrpc_skb_priv *sp = FUNC6(skb);
	struct rxkad_level1_hdr hdr;
	struct rxrpc_crypt iv;
	struct scatterlist sg;
	u16 check;

	FUNC0("");

	check = sp->hdr.seq ^ call->call_id;
	data_size |= (u32)check << 16;

	hdr.data_size = FUNC3(data_size);
	FUNC4(sechdr, &hdr, sizeof(hdr));

	/* start the encryption afresh */
	FUNC5(&iv, 0, sizeof(iv));

	FUNC7(&sg, sechdr, 8);
	FUNC10(req, call->conn->cipher);
	FUNC8(req, 0, NULL, NULL);
	FUNC9(req, &sg, &sg, 8, iv.x);
	FUNC2(req);
	FUNC11(req);

	FUNC1(" = 0");
	return 0;
}