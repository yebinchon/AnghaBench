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
typedef  int uint ;
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct nfc_digital_dev {int (* skb_check_crc ) (struct sk_buff*) ;int local_payload_max; void* curr_nfc_dep_pni; struct sk_buff* saved_skb; struct sk_buff* chaining_skb; scalar_t__ nack_count; scalar_t__ atn_count; int /*<<< orphan*/  data_exch; } ;
struct digital_dep_req_res {scalar_t__ dir; scalar_t__ cmd; int /*<<< orphan*/  pfb; } ;
struct digital_data_exch {int /*<<< orphan*/  cb_context; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,struct sk_buff*,int) ;} ;

/* Variables and functions */
 scalar_t__ DIGITAL_CMD_DEP_RES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DIGITAL_NFC_DEP_FRAME_DIR_IN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ DIGITAL_NFC_DEP_N_RETRY_ATN ; 
 scalar_t__ DIGITAL_NFC_DEP_N_RETRY_NACK ; 
#define  DIGITAL_NFC_DEP_PFB_ACK_NACK_PDU 130 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  DIGITAL_NFC_DEP_PFB_I_PDU 129 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
#define  DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU 128 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIGITAL_NFC_DEP_RTOX_MAX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int EMSGSIZE ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  digital_in_send_ack ; 
 int FUNC11 (struct nfc_digital_dev*,struct digital_data_exch*) ; 
 int FUNC12 (struct nfc_digital_dev*,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct nfc_digital_dev*,struct digital_data_exch*) ; 
 int FUNC14 (struct nfc_digital_dev*,struct digital_data_exch*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct nfc_digital_dev*,struct digital_data_exch*) ; 
 struct sk_buff* FUNC16 (struct nfc_digital_dev*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,struct digital_data_exch*) ; 
 int FUNC17 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct digital_data_exch*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 int FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC23(struct nfc_digital_dev *ddev, void *arg,
				    struct sk_buff *resp)
{
	struct digital_data_exch *data_exch = arg;
	struct digital_dep_req_res *dep_res;
	u8 pfb;
	uint size;
	int rc;
	u8 rtox;

	if (FUNC7(resp)) {
		rc = FUNC9(resp);
		resp = NULL;

		if ((rc == -EIO || (rc == -ETIMEDOUT && ddev->nack_count)) &&
		    (ddev->nack_count++ < DIGITAL_NFC_DEP_N_RETRY_NACK)) {
			ddev->atn_count = 0;

			rc = FUNC13(ddev, data_exch);
			if (rc)
				goto error;

			return;
		} else if ((rc == -ETIMEDOUT) &&
			   (ddev->atn_count++ < DIGITAL_NFC_DEP_N_RETRY_ATN)) {
			ddev->nack_count = 0;

			rc = FUNC11(ddev, data_exch);
			if (rc)
				goto error;

			return;
		}

		goto exit;
	}

	rc = FUNC17(ddev, resp);
	if (rc) {
		FUNC8("14.4.1.2");
		goto exit;
	}

	rc = ddev->skb_check_crc(resp);
	if (rc) {
		if ((resp->len >= 4) &&
		    (ddev->nack_count++ < DIGITAL_NFC_DEP_N_RETRY_NACK)) {
			ddev->atn_count = 0;

			rc = FUNC13(ddev, data_exch);
			if (rc)
				goto error;

			FUNC19(resp);

			return;
		}

		FUNC8("14.4.1.6");
		goto error;
	}

	ddev->atn_count = 0;
	ddev->nack_count = 0;

	if (resp->len > ddev->local_payload_max) {
		rc = -EMSGSIZE;
		goto exit;
	}

	size = sizeof(struct digital_dep_req_res);
	dep_res = (struct digital_dep_req_res *)resp->data;

	if (resp->len < size || dep_res->dir != DIGITAL_NFC_DEP_FRAME_DIR_IN ||
	    dep_res->cmd != DIGITAL_CMD_DEP_RES) {
		rc = -EIO;
		goto error;
	}

	pfb = dep_res->pfb;

	if (FUNC0(pfb)) {
		FUNC8("14.8.2.1");
		rc = -EIO;
		goto error;
	}

	if (FUNC2(pfb)) {
		rc = -EIO;
		goto exit;
	}

	if (size > resp->len) {
		rc = -EIO;
		goto error;
	}

	FUNC20(resp, size);

	switch (FUNC5(pfb)) {
	case DIGITAL_NFC_DEP_PFB_I_PDU:
		if (FUNC4(pfb) != ddev->curr_nfc_dep_pni) {
			FUNC8("14.12.3.3");
			rc = -EIO;
			goto error;
		}

		ddev->curr_nfc_dep_pni =
			FUNC4(ddev->curr_nfc_dep_pni + 1);

		FUNC19(ddev->saved_skb);
		ddev->saved_skb = NULL;

		resp = FUNC16(ddev, pfb, resp,
						    digital_in_send_ack,
						    data_exch);
		if (FUNC7(resp)) {
			rc = FUNC9(resp);
			resp = NULL;
			goto error;
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
		if (FUNC1(pfb)) {
			FUNC8("14.12.4.5");
			rc = -EIO;
			goto exit;
		}

		if (FUNC4(pfb) != ddev->curr_nfc_dep_pni) {
			FUNC8("14.12.3.3");
			rc = -EIO;
			goto exit;
		}

		ddev->curr_nfc_dep_pni =
			FUNC4(ddev->curr_nfc_dep_pni + 1);

		if (!ddev->chaining_skb) {
			FUNC8("14.12.4.3");
			rc = -EIO;
			goto exit;
		}

		/* The initiator has received a valid ACK. Free the last sent
		 * PDU and keep on sending chained skb.
		 */
		FUNC19(ddev->saved_skb);
		ddev->saved_skb = NULL;

		rc = FUNC12(ddev, NULL,
					     ddev->chaining_skb,
					     ddev->data_exch);
		if (rc)
			goto error;

		goto free_resp;

	case DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU:
		if (!FUNC3(pfb)) { /* ATN */
			rc = FUNC15(ddev, data_exch);
			if (rc)
				goto error;

			goto free_resp;
		}

		if (ddev->atn_count || ddev->nack_count) {
			FUNC8("14.12.4.4");
			rc = -EIO;
			goto error;
		}

		rtox = FUNC6(resp->data[0]);
		if (!rtox || rtox > DIGITAL_NFC_DEP_RTOX_MAX) {
			FUNC8("14.8.4.1");
			rc = -EIO;
			goto error;
		}

		rc = FUNC14(ddev, data_exch, rtox);
		if (rc)
			goto error;

		goto free_resp;
	}

exit:
	data_exch->cb(data_exch->cb_context, resp, rc);

error:
	FUNC18(data_exch);

	FUNC19(ddev->chaining_skb);
	ddev->chaining_skb = NULL;

	FUNC19(ddev->saved_skb);
	ddev->saved_skb = NULL;

	if (rc)
		FUNC19(resp);

	return;

free_resp:
	FUNC10(resp);
}