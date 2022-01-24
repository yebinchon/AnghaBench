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
struct sk_buff {size_t len; scalar_t__* data; } ;
struct nfc_digital_dev {int (* skb_check_crc ) (struct sk_buff*) ;size_t local_payload_max; scalar_t__ did; struct sk_buff* saved_skb; scalar_t__ atn_count; struct sk_buff* chaining_skb; int /*<<< orphan*/  nfc_dev; int /*<<< orphan*/  curr_nfc_dep_pni; } ;
struct digital_dep_req_res {scalar_t__ dir; scalar_t__ cmd; int /*<<< orphan*/  pfb; } ;

/* Variables and functions */
 scalar_t__ DIGITAL_CMD_DEP_REQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DIGITAL_NFC_DEP_FRAME_DIR_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
#define  DIGITAL_NFC_DEP_PFB_ACK_NACK_PDU 130 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  DIGITAL_NFC_DEP_PFB_I_PDU 129 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU 128 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 int EMSGSIZE ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct nfc_digital_dev*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  digital_tg_send_ack ; 
 int FUNC12 (struct nfc_digital_dev*) ; 
 int FUNC13 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int FUNC14 (struct nfc_digital_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,size_t) ; 
 int FUNC19 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC20(struct nfc_digital_dev *ddev, void *arg,
				    struct sk_buff *resp)
{
	int rc;
	struct digital_dep_req_res *dep_req;
	u8 pfb;
	size_t size;

	if (FUNC6(resp)) {
		rc = FUNC8(resp);
		resp = NULL;
		goto exit;
	}

	rc = ddev->skb_check_crc(resp);
	if (rc) {
		FUNC7("14.4.1.6");
		goto exit;
	}

	rc = FUNC11(ddev, resp);
	if (rc) {
		FUNC7("14.4.1.2");
		goto exit;
	}

	if (resp->len > ddev->local_payload_max) {
		rc = -EMSGSIZE;
		goto exit;
	}

	size = sizeof(struct digital_dep_req_res);
	dep_req = (struct digital_dep_req_res *)resp->data;

	if (resp->len < size || dep_req->dir != DIGITAL_NFC_DEP_FRAME_DIR_OUT ||
	    dep_req->cmd != DIGITAL_CMD_DEP_REQ) {
		rc = -EIO;
		goto exit;
	}

	pfb = dep_req->pfb;

	if (FUNC0(pfb)) {
		if (ddev->did && (ddev->did == resp->data[3])) {
			size++;
		} else {
			rc = -EIO;
			goto exit;
		}
	} else if (ddev->did) {
		rc = -EIO;
		goto exit;
	}

	if (FUNC2(pfb)) {
		rc = -EIO;
		goto exit;
	}

	if (size > resp->len) {
		rc = -EIO;
		goto exit;
	}

	FUNC18(resp, size);

	switch (FUNC5(pfb)) {
	case DIGITAL_NFC_DEP_PFB_I_PDU:
		FUNC17("DIGITAL_NFC_DEP_PFB_I_PDU\n");

		if (ddev->atn_count) {
			/* The target has received (and replied to) at least one
			 * ATN DEP_REQ.
			 */
			ddev->atn_count = 0;

			/* pni of resp PDU equal to the target current pni - 1
			 * means resp is the previous DEP_REQ PDU received from
			 * the initiator so the target replies with saved_skb
			 * which is the previous DEP_RES saved in
			 * digital_tg_send_dep_res().
			 */
			if (FUNC4(pfb) ==
			  FUNC4(ddev->curr_nfc_dep_pni - 1)) {
				rc = FUNC14(ddev);
				if (rc)
					goto exit;

				goto free_resp;
			}

			/* atn_count > 0 and PDU pni != curr_nfc_dep_pni - 1
			 * means the target probably did not received the last
			 * DEP_REQ PDU sent by the initiator. The target
			 * fallbacks to normal processing then.
			 */
		}

		if (FUNC4(pfb) != ddev->curr_nfc_dep_pni) {
			FUNC7("14.12.3.4");
			rc = -EIO;
			goto exit;
		}

		FUNC15(ddev->saved_skb);
		ddev->saved_skb = NULL;

		resp = FUNC10(ddev, pfb, resp,
						    digital_tg_send_ack, NULL);
		if (FUNC6(resp)) {
			rc = FUNC8(resp);
			resp = NULL;
			goto exit;
		}

		/* If resp is NULL then we're still chaining so return and
		 * wait for the next part of the PDU.  Else, the PDU is
		 * complete so pass it up.
		 */
		if (!resp)
			return;

		rc = 0;
		break;
	case DIGITAL_NFC_DEP_PFB_ACK_NACK_PDU:
		if (FUNC1(pfb)) { /* NACK */
			if (FUNC4(pfb + 1) !=
						ddev->curr_nfc_dep_pni) {
				rc = -EIO;
				goto exit;
			}

			ddev->atn_count = 0;

			rc = FUNC14(ddev);
			if (rc)
				goto exit;

			goto free_resp;
		}

		/* ACK */
		if (ddev->atn_count) {
			/* The target has previously recevied one or more ATN
			 * PDUs.
			 */
			ddev->atn_count = 0;

			/* If the ACK PNI is equal to the target PNI - 1 means
			 * that the initiator did not receive the previous PDU
			 * sent by the target so re-send it.
			 */
			if (FUNC4(pfb + 1) ==
						ddev->curr_nfc_dep_pni) {
				rc = FUNC14(ddev);
				if (rc)
					goto exit;

				goto free_resp;
			}

			/* Otherwise, the target did not receive the previous
			 * ACK PDU from the initiator. Fallback to normal
			 * processing of chained PDU then.
			 */
		}

		/* Keep on sending chained PDU */
		if (!ddev->chaining_skb ||
		    FUNC4(pfb) !=
					ddev->curr_nfc_dep_pni) {
			rc = -EIO;
			goto exit;
		}

		FUNC15(ddev->saved_skb);
		ddev->saved_skb = NULL;

		rc = FUNC13(ddev, ddev->chaining_skb);
		if (rc)
			goto exit;

		goto free_resp;
	case DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU:
		if (FUNC3(pfb)) {
			rc = -EINVAL;
			goto exit;
		}

		rc = FUNC12(ddev);
		if (rc)
			goto exit;

		ddev->atn_count++;

		goto free_resp;
	}

	rc = FUNC16(ddev->nfc_dev, resp);

exit:
	FUNC15(ddev->chaining_skb);
	ddev->chaining_skb = NULL;

	ddev->atn_count = 0;

	FUNC15(ddev->saved_skb);
	ddev->saved_skb = NULL;

	if (rc)
		FUNC15(resp);

	return;

free_resp:
	FUNC9(resp);
}