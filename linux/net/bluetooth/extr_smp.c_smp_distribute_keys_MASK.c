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
typedef  int u8 ;
struct smp_ltk {int dummy; } ;
struct smp_csrk {int /*<<< orphan*/  val; int /*<<< orphan*/  type; } ;
struct smp_cmd_sign_info {void** ltk; void** csrk; int /*<<< orphan*/  addr_type; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  irk; void* rand; void* ediv; } ;
struct smp_cmd_pairing {int init_key_dist; int resp_key_dist; } ;
struct smp_cmd_master_ident {void** ltk; void** csrk; int /*<<< orphan*/  addr_type; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  irk; void* rand; void* ediv; } ;
struct smp_cmd_ident_info {void** ltk; void** csrk; int /*<<< orphan*/  addr_type; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  irk; void* rand; void* ediv; } ;
struct smp_cmd_ident_addr_info {void** ltk; void** csrk; int /*<<< orphan*/  addr_type; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  irk; void* rand; void* ediv; } ;
struct smp_cmd_encrypt_info {void** ltk; void** csrk; int /*<<< orphan*/  addr_type; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  irk; void* rand; void* ediv; } ;
struct smp_chan {int remote_key_dist; int enc_key_size; int /*<<< orphan*/  flags; struct smp_csrk* slave_csrk; struct smp_ltk* slave_ltk; int /*<<< orphan*/ * preq; int /*<<< orphan*/ * prsp; struct l2cap_conn* conn; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_dev {void** irk; } ;
struct hci_conn {scalar_t__ type; scalar_t__ sec_level; int /*<<< orphan*/  src_type; int /*<<< orphan*/  src; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  dst; scalar_t__ out; struct hci_dev* hdev; } ;
typedef  int /*<<< orphan*/  sign ;
typedef  int /*<<< orphan*/  rand ;
typedef  int /*<<< orphan*/  idinfo ;
typedef  int /*<<< orphan*/  ident ;
typedef  int /*<<< orphan*/  enc ;
typedef  int /*<<< orphan*/  ediv ;
typedef  int /*<<< orphan*/  addrinfo ;
typedef  int __u8 ;
typedef  void* __le64 ;
typedef  void* __le16 ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ BT_SECURITY_HIGH ; 
 scalar_t__ BT_SECURITY_MEDIUM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KEY_DIST_MASK ; 
 scalar_t__ LE_LINK ; 
 int /*<<< orphan*/  MGMT_CSRK_LOCAL_AUTHENTICATED ; 
 int /*<<< orphan*/  MGMT_CSRK_LOCAL_UNAUTHENTICATED ; 
 int /*<<< orphan*/  SMP_CMD_ENCRYPT_INFO ; 
 int /*<<< orphan*/  SMP_CMD_IDENT_ADDR_INFO ; 
 int /*<<< orphan*/  SMP_CMD_IDENT_INFO ; 
 int /*<<< orphan*/  SMP_CMD_MASTER_IDENT ; 
 int /*<<< orphan*/  SMP_CMD_SIGN_INFO ; 
 int SMP_DIST_ENC_KEY ; 
 int SMP_DIST_ID_KEY ; 
 int SMP_DIST_LINK_KEY ; 
 int SMP_DIST_SIGN ; 
 int /*<<< orphan*/  SMP_FLAG_COMPLETE ; 
 int /*<<< orphan*/  SMP_FLAG_SC ; 
 int /*<<< orphan*/  SMP_LTK_SLAVE ; 
 int SMP_SC_NO_DIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void**,int) ; 
 struct smp_ltk* FUNC3 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void**,int,void*,void*) ; 
 struct smp_csrk* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC6 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC11 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC12 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC13 (struct l2cap_conn*,int /*<<< orphan*/ ,int,struct smp_cmd_sign_info*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct smp_chan *smp)
{
	struct smp_cmd_pairing *req, *rsp;
	struct l2cap_conn *conn = smp->conn;
	struct hci_conn *hcon = conn->hcon;
	struct hci_dev *hdev = hcon->hdev;
	__u8 *keydist;

	FUNC0("conn %p", conn);

	rsp = (void *) &smp->prsp[1];

	/* The responder sends its keys first */
	if (hcon->out && (smp->remote_key_dist & KEY_DIST_MASK)) {
		FUNC10(smp);
		return;
	}

	req = (void *) &smp->preq[1];

	if (hcon->out) {
		keydist = &rsp->init_key_dist;
		*keydist &= req->init_key_dist;
	} else {
		keydist = &rsp->resp_key_dist;
		*keydist &= req->resp_key_dist;
	}

	if (FUNC14(SMP_FLAG_SC, &smp->flags)) {
		if (hcon->type == LE_LINK && (*keydist & SMP_DIST_LINK_KEY))
			FUNC7(smp);
		if (hcon->type == ACL_LINK && (*keydist & SMP_DIST_ENC_KEY))
			FUNC8(smp);

		/* Clear the keys which are generated but not distributed */
		*keydist &= ~SMP_SC_NO_DIST;
	}

	FUNC0("keydist 0x%x", *keydist);

	if (*keydist & SMP_DIST_ENC_KEY) {
		struct smp_cmd_encrypt_info enc;
		struct smp_cmd_master_ident ident;
		struct smp_ltk *ltk;
		u8 authenticated;
		__le16 ediv;
		__le64 rand;

		/* Make sure we generate only the significant amount of
		 * bytes based on the encryption key size, and set the rest
		 * of the value to zeroes.
		 */
		FUNC2(enc.ltk, smp->enc_key_size);
		FUNC6(enc.ltk + smp->enc_key_size, 0,
		       sizeof(enc.ltk) - smp->enc_key_size);

		FUNC2(&ediv, sizeof(ediv));
		FUNC2(&rand, sizeof(rand));

		FUNC13(conn, SMP_CMD_ENCRYPT_INFO, sizeof(enc), &enc);

		authenticated = hcon->sec_level == BT_SECURITY_HIGH;
		ltk = FUNC3(hdev, &hcon->dst, hcon->dst_type,
				  SMP_LTK_SLAVE, authenticated, enc.ltk,
				  smp->enc_key_size, ediv, rand);
		smp->slave_ltk = ltk;

		ident.ediv = ediv;
		ident.rand = rand;

		FUNC13(conn, SMP_CMD_MASTER_IDENT, sizeof(ident), &ident);

		*keydist &= ~SMP_DIST_ENC_KEY;
	}

	if (*keydist & SMP_DIST_ID_KEY) {
		struct smp_cmd_ident_addr_info addrinfo;
		struct smp_cmd_ident_info idinfo;

		FUNC5(idinfo.irk, hdev->irk, sizeof(idinfo.irk));

		FUNC13(conn, SMP_CMD_IDENT_INFO, sizeof(idinfo), &idinfo);

		/* The hci_conn contains the local identity address
		 * after the connection has been established.
		 *
		 * This is true even when the connection has been
		 * established using a resolvable random address.
		 */
		FUNC1(&addrinfo.bdaddr, &hcon->src);
		addrinfo.addr_type = hcon->src_type;

		FUNC13(conn, SMP_CMD_IDENT_ADDR_INFO, sizeof(addrinfo),
			     &addrinfo);

		*keydist &= ~SMP_DIST_ID_KEY;
	}

	if (*keydist & SMP_DIST_SIGN) {
		struct smp_cmd_sign_info sign;
		struct smp_csrk *csrk;

		/* Generate a new random key */
		FUNC2(sign.csrk, sizeof(sign.csrk));

		csrk = FUNC4(sizeof(*csrk), GFP_KERNEL);
		if (csrk) {
			if (hcon->sec_level > BT_SECURITY_MEDIUM)
				csrk->type = MGMT_CSRK_LOCAL_AUTHENTICATED;
			else
				csrk->type = MGMT_CSRK_LOCAL_UNAUTHENTICATED;
			FUNC5(csrk->val, sign.csrk, sizeof(csrk->val));
		}
		smp->slave_csrk = csrk;

		FUNC13(conn, SMP_CMD_SIGN_INFO, sizeof(sign), &sign);

		*keydist &= ~SMP_DIST_SIGN;
	}

	/* If there are still keys to be received wait for them */
	if (smp->remote_key_dist & KEY_DIST_MASK) {
		FUNC10(smp);
		return;
	}

	FUNC9(SMP_FLAG_COMPLETE, &smp->flags);
	FUNC12(conn);

	FUNC11(conn);
}