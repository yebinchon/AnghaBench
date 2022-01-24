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
typedef  int u32 ;
typedef  int u16 ;
struct skcipher_request {int dummy; } ;
struct sk_buff {int dummy; } ;
struct scatterlist {int dummy; } ;
struct rxrpc_crypt {int /*<<< orphan*/  x; } ;
struct rxrpc_call {int call_id; TYPE_1__* conn; } ;
struct rxkad_level1_hdr {int /*<<< orphan*/  data_size; } ;
typedef  int /*<<< orphan*/  sechdr ;
typedef  int rxrpc_seq_t ;
typedef  int /*<<< orphan*/  iv ;
struct TYPE_2__ {int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*) ; 
 int EPROTO ; 
 int /*<<< orphan*/  RXKADDATALEN ; 
 int /*<<< orphan*/  RXKADSEALEDINCON ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_crypt*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rxrpc_call*,struct sk_buff*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,unsigned int,struct rxkad_level1_hdr*,int) ; 
 int FUNC10 (struct sk_buff*,struct scatterlist*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct skcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct skcipher_request*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct rxrpc_call *call, struct sk_buff *skb,
				 unsigned int offset, unsigned int len,
				 rxrpc_seq_t seq,
				 struct skcipher_request *req)
{
	struct rxkad_level1_hdr sechdr;
	struct rxrpc_crypt iv;
	struct scatterlist sg[16];
	bool aborted;
	u32 data_size, buf;
	u16 check;
	int ret;

	FUNC1("");

	if (len < 8) {
		aborted = FUNC6(call, skb, "rxkad_1_hdr", "V1H",
					   RXKADSEALEDINCON);
		goto protocol_error;
	}

	/* Decrypt the skbuff in-place.  TODO: We really want to decrypt
	 * directly into the target buffer.
	 */
	FUNC8(sg, FUNC0(sg));
	ret = FUNC10(skb, sg, offset, 8);
	if (FUNC15(ret < 0))
		return ret;

	/* start the decryption afresh */
	FUNC4(&iv, 0, sizeof(iv));

	FUNC13(req, call->conn->cipher);
	FUNC11(req, 0, NULL, NULL);
	FUNC12(req, sg, sg, 8, iv.x);
	FUNC3(req);
	FUNC14(req);

	/* Extract the decrypted packet length */
	if (FUNC9(skb, offset, &sechdr, sizeof(sechdr)) < 0) {
		aborted = FUNC6(call, skb, "rxkad_1_len", "XV1",
					     RXKADDATALEN);
		goto protocol_error;
	}
	offset += sizeof(sechdr);
	len -= sizeof(sechdr);

	buf = FUNC5(sechdr.data_size);
	data_size = buf & 0xffff;

	check = buf >> 16;
	check ^= seq ^ call->call_id;
	check &= 0xffff;
	if (check != 0) {
		aborted = FUNC6(call, skb, "rxkad_1_check", "V1C",
					     RXKADSEALEDINCON);
		goto protocol_error;
	}

	if (data_size > len) {
		aborted = FUNC6(call, skb, "rxkad_1_datalen", "V1L",
					     RXKADDATALEN);
		goto protocol_error;
	}

	FUNC2(" = 0 [dlen=%x]", data_size);
	return 0;

protocol_error:
	if (aborted)
		FUNC7(call);
	return -EPROTO;
}