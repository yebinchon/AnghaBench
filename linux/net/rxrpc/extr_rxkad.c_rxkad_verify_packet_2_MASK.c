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
typedef  int u32 ;
typedef  int u16 ;
struct skcipher_request {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct scatterlist {int dummy; } ;
struct rxrpc_key_token {TYPE_4__* kad; } ;
struct rxrpc_crypt {int /*<<< orphan*/  x; } ;
struct rxrpc_call {int call_id; TYPE_5__* conn; } ;
struct rxkad_level2_hdr {int /*<<< orphan*/  data_size; } ;
typedef  int /*<<< orphan*/  sechdr ;
typedef  int rxrpc_seq_t ;
typedef  int /*<<< orphan*/  iv ;
struct TYPE_12__ {int nr_frags; } ;
struct TYPE_9__ {TYPE_2__* key; } ;
struct TYPE_11__ {int /*<<< orphan*/  cipher; TYPE_3__ params; } ;
struct TYPE_10__ {int /*<<< orphan*/  session_key; } ;
struct TYPE_7__ {struct rxrpc_key_token** data; } ;
struct TYPE_8__ {TYPE_1__ payload; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  RXKADDATALEN ; 
 int /*<<< orphan*/  RXKADSEALEDINCON ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 
 struct scatterlist* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_crypt*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rxrpc_call*,struct sk_buff*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int) ; 
 scalar_t__ FUNC10 (struct sk_buff*,unsigned int,struct rxkad_level2_hdr*,int) ; 
 TYPE_6__* FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*,struct scatterlist*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct skcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct skcipher_request*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct rxrpc_call *call, struct sk_buff *skb,
				 unsigned int offset, unsigned int len,
				 rxrpc_seq_t seq,
				 struct skcipher_request *req)
{
	const struct rxrpc_key_token *token;
	struct rxkad_level2_hdr sechdr;
	struct rxrpc_crypt iv;
	struct scatterlist _sg[4], *sg;
	bool aborted;
	u32 data_size, buf;
	u16 check;
	int nsg, ret;

	FUNC0(",{%d}", skb->len);

	if (len < 8) {
		aborted = FUNC7(call, skb, "rxkad_2_hdr", "V2H",
					     RXKADSEALEDINCON);
		goto protocol_error;
	}

	/* Decrypt the skbuff in-place.  TODO: We really want to decrypt
	 * directly into the target buffer.
	 */
	sg = _sg;
	nsg = FUNC11(skb)->nr_frags;
	if (nsg <= 4) {
		nsg = 4;
	} else {
		sg = FUNC4(nsg, sizeof(*sg), GFP_NOIO);
		if (!sg)
			goto nomem;
	}

	FUNC9(sg, nsg);
	ret = FUNC12(skb, sg, offset, len);
	if (FUNC17(ret < 0)) {
		if (sg != _sg)
			FUNC3(sg);
		return ret;
	}

	/* decrypt from the session key */
	token = call->conn->params.key->payload.data[0];
	FUNC5(&iv, token->kad->session_key, sizeof(iv));

	FUNC15(req, call->conn->cipher);
	FUNC13(req, 0, NULL, NULL);
	FUNC14(req, sg, sg, len, iv.x);
	FUNC2(req);
	FUNC16(req);
	if (sg != _sg)
		FUNC3(sg);

	/* Extract the decrypted packet length */
	if (FUNC10(skb, offset, &sechdr, sizeof(sechdr)) < 0) {
		aborted = FUNC7(call, skb, "rxkad_2_len", "XV2",
					     RXKADDATALEN);
		goto protocol_error;
	}
	offset += sizeof(sechdr);
	len -= sizeof(sechdr);

	buf = FUNC6(sechdr.data_size);
	data_size = buf & 0xffff;

	check = buf >> 16;
	check ^= seq ^ call->call_id;
	check &= 0xffff;
	if (check != 0) {
		aborted = FUNC7(call, skb, "rxkad_2_check", "V2C",
					     RXKADSEALEDINCON);
		goto protocol_error;
	}

	if (data_size > len) {
		aborted = FUNC7(call, skb, "rxkad_2_datalen", "V2L",
					     RXKADDATALEN);
		goto protocol_error;
	}

	FUNC1(" = 0 [dlen=%x]", data_size);
	return 0;

protocol_error:
	if (aborted)
		FUNC8(call);
	return -EPROTO;

nomem:
	FUNC1(" = -ENOMEM");
	return -ENOMEM;
}