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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct hci_ev_cmd_complete {scalar_t__ ncmd; int /*<<< orphan*/  opcode; } ;
struct hci_dev {int /*<<< orphan*/  cmd_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  cmd_cnt; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_timer; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  hci_req_complete_t ;
typedef  int /*<<< orphan*/  hci_req_complete_skb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CMD_PENDING ; 
#define  HCI_OP_DELETE_STORED_LINK_KEY 208 
#define  HCI_OP_EXIT_PERIODIC_INQ 207 
#define  HCI_OP_INQUIRY_CANCEL 206 
#define  HCI_OP_LE_ADD_TO_RESOLV_LIST 205 
#define  HCI_OP_LE_ADD_TO_WHITE_LIST 204 
#define  HCI_OP_LE_CLEAR_RESOLV_LIST 203 
#define  HCI_OP_LE_CLEAR_WHITE_LIST 202 
#define  HCI_OP_LE_DEL_FROM_RESOLV_LIST 201 
#define  HCI_OP_LE_DEL_FROM_WHITE_LIST 200 
#define  HCI_OP_LE_READ_ADV_TX_POWER 199 
#define  HCI_OP_LE_READ_BUFFER_SIZE 198 
#define  HCI_OP_LE_READ_DEF_DATA_LEN 197 
#define  HCI_OP_LE_READ_LOCAL_FEATURES 196 
#define  HCI_OP_LE_READ_MAX_DATA_LEN 195 
#define  HCI_OP_LE_READ_NUM_SUPPORTED_ADV_SETS 194 
#define  HCI_OP_LE_READ_RESOLV_LIST_SIZE 193 
#define  HCI_OP_LE_READ_SUPPORTED_STATES 192 
#define  HCI_OP_LE_READ_WHITE_LIST_SIZE 191 
#define  HCI_OP_LE_SET_ADDR_RESOLV_ENABLE 190 
#define  HCI_OP_LE_SET_ADV_ENABLE 189 
#define  HCI_OP_LE_SET_ADV_PARAM 188 
#define  HCI_OP_LE_SET_ADV_SET_RAND_ADDR 187 
#define  HCI_OP_LE_SET_DEFAULT_PHY 186 
#define  HCI_OP_LE_SET_EXT_ADV_ENABLE 185 
#define  HCI_OP_LE_SET_EXT_ADV_PARAMS 184 
#define  HCI_OP_LE_SET_EXT_SCAN_ENABLE 183 
#define  HCI_OP_LE_SET_EXT_SCAN_PARAMS 182 
#define  HCI_OP_LE_SET_RANDOM_ADDR 181 
#define  HCI_OP_LE_SET_SCAN_ENABLE 180 
#define  HCI_OP_LE_SET_SCAN_PARAM 179 
#define  HCI_OP_LE_WRITE_DEF_DATA_LEN 178 
 int /*<<< orphan*/  HCI_OP_NOP ; 
#define  HCI_OP_PERIODIC_INQ 177 
#define  HCI_OP_PIN_CODE_NEG_REPLY 176 
#define  HCI_OP_PIN_CODE_REPLY 175 
#define  HCI_OP_READ_AUTH_PAYLOAD_TO 174 
#define  HCI_OP_READ_BD_ADDR 173 
#define  HCI_OP_READ_BUFFER_SIZE 172 
#define  HCI_OP_READ_CLASS_OF_DEV 171 
#define  HCI_OP_READ_CLOCK 170 
#define  HCI_OP_READ_DATA_BLOCK_SIZE 169 
#define  HCI_OP_READ_DEF_LINK_POLICY 168 
#define  HCI_OP_READ_FLOW_CONTROL_MODE 167 
#define  HCI_OP_READ_INQ_RSP_TX_POWER 166 
#define  HCI_OP_READ_LINK_POLICY 165 
#define  HCI_OP_READ_LOCAL_AMP_INFO 164 
#define  HCI_OP_READ_LOCAL_COMMANDS 163 
#define  HCI_OP_READ_LOCAL_EXT_FEATURES 162 
#define  HCI_OP_READ_LOCAL_FEATURES 161 
#define  HCI_OP_READ_LOCAL_NAME 160 
#define  HCI_OP_READ_LOCAL_OOB_DATA 159 
#define  HCI_OP_READ_LOCAL_OOB_EXT_DATA 158 
#define  HCI_OP_READ_LOCAL_VERSION 157 
#define  HCI_OP_READ_NUM_SUPPORTED_IAC 156 
#define  HCI_OP_READ_PAGE_SCAN_ACTIVITY 155 
#define  HCI_OP_READ_PAGE_SCAN_TYPE 154 
#define  HCI_OP_READ_RSSI 153 
#define  HCI_OP_READ_STORED_LINK_KEY 152 
#define  HCI_OP_READ_TX_POWER 151 
#define  HCI_OP_READ_VOICE_SETTING 150 
#define  HCI_OP_REMOTE_NAME_REQ_CANCEL 149 
#define  HCI_OP_RESET 148 
#define  HCI_OP_ROLE_DISCOVERY 147 
#define  HCI_OP_USER_CONFIRM_NEG_REPLY 146 
#define  HCI_OP_USER_CONFIRM_REPLY 145 
#define  HCI_OP_USER_PASSKEY_NEG_REPLY 144 
#define  HCI_OP_USER_PASSKEY_REPLY 143 
#define  HCI_OP_WRITE_AUTH_ENABLE 142 
#define  HCI_OP_WRITE_AUTH_PAYLOAD_TO 141 
#define  HCI_OP_WRITE_CLASS_OF_DEV 140 
#define  HCI_OP_WRITE_DEF_LINK_POLICY 139 
#define  HCI_OP_WRITE_ENCRYPT_MODE 138 
#define  HCI_OP_WRITE_LE_HOST_SUPPORTED 137 
#define  HCI_OP_WRITE_LINK_POLICY 136 
#define  HCI_OP_WRITE_LOCAL_NAME 135 
#define  HCI_OP_WRITE_PAGE_SCAN_ACTIVITY 134 
#define  HCI_OP_WRITE_PAGE_SCAN_TYPE 133 
#define  HCI_OP_WRITE_SCAN_ENABLE 132 
#define  HCI_OP_WRITE_SC_SUPPORT 131 
#define  HCI_OP_WRITE_SSP_DEBUG_MODE 130 
#define  HCI_OP_WRITE_SSP_MODE 129 
#define  HCI_OP_WRITE_VOICE_SETTING 128 
 int /*<<< orphan*/  HCI_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC30 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC31 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC32 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC33 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC34 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC35 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC36 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC37 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC38 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC39 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC40 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC41 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC42 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC43 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC44 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC45 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC46 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC47 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC48 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC49 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC50 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC51 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC52 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC53 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC54 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC55 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC56 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC57 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC58 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC59 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC60 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC61 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC62 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC63 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC64 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC65 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC66 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC67 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC68 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC69 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC70 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC71 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC72 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC73 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC74 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC75 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC76 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC77 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC78 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC79 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC80 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC81 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC82 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC83 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC84 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC85 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC86 (struct hci_dev*,struct sk_buff*) ; 
 scalar_t__ FUNC87 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC88 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC89 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC90 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC91 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC92 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC93(struct hci_dev *hdev, struct sk_buff *skb,
				 u16 *opcode, u8 *status,
				 hci_req_complete_t *req_complete,
				 hci_req_complete_skb_t *req_complete_skb)
{
	struct hci_ev_cmd_complete *ev = (void *) skb->data;

	*opcode = FUNC1(ev->opcode);
	*status = skb->data[sizeof(*ev)];

	FUNC90(skb, sizeof(*ev));

	switch (*opcode) {
	case HCI_OP_INQUIRY_CANCEL:
		FUNC8(hdev, skb);
		break;

	case HCI_OP_PERIODIC_INQ:
		FUNC35(hdev, skb);
		break;

	case HCI_OP_EXIT_PERIODIC_INQ:
		FUNC7(hdev, skb);
		break;

	case HCI_OP_REMOTE_NAME_REQ_CANCEL:
		FUNC63(hdev, skb);
		break;

	case HCI_OP_ROLE_DISCOVERY:
		FUNC65(hdev, skb);
		break;

	case HCI_OP_READ_LINK_POLICY:
		FUNC47(hdev, skb);
		break;

	case HCI_OP_WRITE_LINK_POLICY:
		FUNC78(hdev, skb);
		break;

	case HCI_OP_READ_DEF_LINK_POLICY:
		FUNC44(hdev, skb);
		break;

	case HCI_OP_WRITE_DEF_LINK_POLICY:
		FUNC75(hdev, skb);
		break;

	case HCI_OP_RESET:
		FUNC64(hdev, skb);
		break;

	case HCI_OP_READ_STORED_LINK_KEY:
		FUNC60(hdev, skb);
		break;

	case HCI_OP_DELETE_STORED_LINK_KEY:
		FUNC6(hdev, skb);
		break;

	case HCI_OP_WRITE_LOCAL_NAME:
		FUNC79(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_NAME:
		FUNC52(hdev, skb);
		break;

	case HCI_OP_WRITE_AUTH_ENABLE:
		FUNC72(hdev, skb);
		break;

	case HCI_OP_WRITE_ENCRYPT_MODE:
		FUNC76(hdev, skb);
		break;

	case HCI_OP_WRITE_SCAN_ENABLE:
		FUNC83(hdev, skb);
		break;

	case HCI_OP_READ_CLASS_OF_DEV:
		FUNC41(hdev, skb);
		break;

	case HCI_OP_WRITE_CLASS_OF_DEV:
		FUNC74(hdev, skb);
		break;

	case HCI_OP_READ_VOICE_SETTING:
		FUNC62(hdev, skb);
		break;

	case HCI_OP_WRITE_VOICE_SETTING:
		FUNC86(hdev, skb);
		break;

	case HCI_OP_READ_NUM_SUPPORTED_IAC:
		FUNC56(hdev, skb);
		break;

	case HCI_OP_WRITE_SSP_MODE:
		FUNC85(hdev, skb);
		break;

	case HCI_OP_WRITE_SC_SUPPORT:
		FUNC82(hdev, skb);
		break;

	case HCI_OP_READ_AUTH_PAYLOAD_TO:
		FUNC38(hdev, skb);
		break;

	case HCI_OP_WRITE_AUTH_PAYLOAD_TO:
		FUNC73(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_VERSION:
		FUNC55(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_COMMANDS:
		FUNC49(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_FEATURES:
		FUNC51(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_EXT_FEATURES:
		FUNC50(hdev, skb);
		break;

	case HCI_OP_READ_BUFFER_SIZE:
		FUNC40(hdev, skb);
		break;

	case HCI_OP_READ_BD_ADDR:
		FUNC39(hdev, skb);
		break;

	case HCI_OP_READ_PAGE_SCAN_ACTIVITY:
		FUNC57(hdev, skb);
		break;

	case HCI_OP_WRITE_PAGE_SCAN_ACTIVITY:
		FUNC80(hdev, skb);
		break;

	case HCI_OP_READ_PAGE_SCAN_TYPE:
		FUNC58(hdev, skb);
		break;

	case HCI_OP_WRITE_PAGE_SCAN_TYPE:
		FUNC81(hdev, skb);
		break;

	case HCI_OP_READ_DATA_BLOCK_SIZE:
		FUNC43(hdev, skb);
		break;

	case HCI_OP_READ_FLOW_CONTROL_MODE:
		FUNC45(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_AMP_INFO:
		FUNC48(hdev, skb);
		break;

	case HCI_OP_READ_CLOCK:
		FUNC42(hdev, skb);
		break;

	case HCI_OP_READ_INQ_RSP_TX_POWER:
		FUNC46(hdev, skb);
		break;

	case HCI_OP_PIN_CODE_REPLY:
		FUNC37(hdev, skb);
		break;

	case HCI_OP_PIN_CODE_NEG_REPLY:
		FUNC36(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_OOB_DATA:
		FUNC53(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_OOB_EXT_DATA:
		FUNC54(hdev, skb);
		break;

	case HCI_OP_LE_READ_BUFFER_SIZE:
		FUNC16(hdev, skb);
		break;

	case HCI_OP_LE_READ_LOCAL_FEATURES:
		FUNC18(hdev, skb);
		break;

	case HCI_OP_LE_READ_ADV_TX_POWER:
		FUNC15(hdev, skb);
		break;

	case HCI_OP_USER_CONFIRM_REPLY:
		FUNC69(hdev, skb);
		break;

	case HCI_OP_USER_CONFIRM_NEG_REPLY:
		FUNC68(hdev, skb);
		break;

	case HCI_OP_USER_PASSKEY_REPLY:
		FUNC71(hdev, skb);
		break;

	case HCI_OP_USER_PASSKEY_NEG_REPLY:
		FUNC70(hdev, skb);
		break;

	case HCI_OP_LE_SET_RANDOM_ADDR:
		FUNC31(hdev, skb);
		break;

	case HCI_OP_LE_SET_ADV_ENABLE:
		FUNC25(hdev, skb);
		break;

	case HCI_OP_LE_SET_SCAN_PARAM:
		FUNC33(hdev, skb);
		break;

	case HCI_OP_LE_SET_SCAN_ENABLE:
		FUNC32(hdev, skb);
		break;

	case HCI_OP_LE_READ_WHITE_LIST_SIZE:
		FUNC23(hdev, skb);
		break;

	case HCI_OP_LE_CLEAR_WHITE_LIST:
		FUNC12(hdev, skb);
		break;

	case HCI_OP_LE_ADD_TO_WHITE_LIST:
		FUNC10(hdev, skb);
		break;

	case HCI_OP_LE_DEL_FROM_WHITE_LIST:
		FUNC14(hdev, skb);
		break;

	case HCI_OP_LE_READ_SUPPORTED_STATES:
		FUNC22(hdev, skb);
		break;

	case HCI_OP_LE_READ_DEF_DATA_LEN:
		FUNC17(hdev, skb);
		break;

	case HCI_OP_LE_WRITE_DEF_DATA_LEN:
		FUNC34(hdev, skb);
		break;

	case HCI_OP_LE_ADD_TO_RESOLV_LIST:
		FUNC9(hdev, skb);
		break;

	case HCI_OP_LE_DEL_FROM_RESOLV_LIST:
		FUNC13(hdev, skb);
		break;

	case HCI_OP_LE_CLEAR_RESOLV_LIST:
		FUNC11(hdev, skb);
		break;

	case HCI_OP_LE_READ_RESOLV_LIST_SIZE:
		FUNC21(hdev, skb);
		break;

	case HCI_OP_LE_SET_ADDR_RESOLV_ENABLE:
		FUNC24(hdev, skb);
		break;

	case HCI_OP_LE_READ_MAX_DATA_LEN:
		FUNC19(hdev, skb);
		break;

	case HCI_OP_WRITE_LE_HOST_SUPPORTED:
		FUNC77(hdev, skb);
		break;

	case HCI_OP_LE_SET_ADV_PARAM:
		FUNC66(hdev, skb);
		break;

	case HCI_OP_READ_RSSI:
		FUNC59(hdev, skb);
		break;

	case HCI_OP_READ_TX_POWER:
		FUNC61(hdev, skb);
		break;

	case HCI_OP_WRITE_SSP_DEBUG_MODE:
		FUNC84(hdev, skb);
		break;

	case HCI_OP_LE_SET_EXT_SCAN_PARAMS:
		FUNC30(hdev, skb);
		break;

	case HCI_OP_LE_SET_EXT_SCAN_ENABLE:
		FUNC29(hdev, skb);
		break;

	case HCI_OP_LE_SET_DEFAULT_PHY:
		FUNC27(hdev, skb);
		break;

	case HCI_OP_LE_READ_NUM_SUPPORTED_ADV_SETS:
		FUNC20(hdev, skb);
		break;

	case HCI_OP_LE_SET_EXT_ADV_PARAMS:
		FUNC67(hdev, skb);
		break;

	case HCI_OP_LE_SET_EXT_ADV_ENABLE:
		FUNC28(hdev, skb);
		break;

	case HCI_OP_LE_SET_ADV_SET_RAND_ADDR:
		FUNC26(hdev, skb);
		break;

	default:
		FUNC0("%s opcode 0x%4.4x", hdev->name, *opcode);
		break;
	}

	if (*opcode != HCI_OP_NOP)
		FUNC5(&hdev->cmd_timer);

	if (ev->ncmd && !FUNC92(HCI_RESET, &hdev->flags))
		FUNC3(&hdev->cmd_cnt, 1);

	FUNC88(hdev, *opcode, *status, req_complete,
			     req_complete_skb);

	if (FUNC87(hdev, HCI_CMD_PENDING)) {
		FUNC4(hdev,
			   "unexpected event for opcode 0x%4.4x", *opcode);
		return;
	}

	if (FUNC2(&hdev->cmd_cnt) && !FUNC91(&hdev->cmd_q))
		FUNC89(hdev->workqueue, &hdev->cmd_work);
}