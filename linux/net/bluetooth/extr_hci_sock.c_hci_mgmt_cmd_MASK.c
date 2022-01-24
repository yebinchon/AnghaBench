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
typedef  size_t u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct mgmt_hdr {int /*<<< orphan*/  len; int /*<<< orphan*/  index; int /*<<< orphan*/  opcode; } ;
struct hci_mgmt_handler {int (* func ) (struct sock*,struct hci_dev*,int /*<<< orphan*/ *,size_t) ;int flags; size_t data_len; } ;
struct hci_mgmt_chan {scalar_t__ channel; size_t handler_count; int /*<<< orphan*/  (* hdev_init ) (struct sock*,struct hci_dev*) ;struct hci_mgmt_handler* handlers; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HCI_CHANNEL_CONTROL ; 
 int /*<<< orphan*/  HCI_CHANNEL_MONITOR ; 
 int /*<<< orphan*/  HCI_CONFIG ; 
 int HCI_MGMT_NO_HDEV ; 
 int HCI_MGMT_UNCONFIGURED ; 
 int HCI_MGMT_UNTRUSTED ; 
 int HCI_MGMT_VAR_LEN ; 
 int /*<<< orphan*/  HCI_SETUP ; 
 int /*<<< orphan*/  HCI_SOCK_TRUSTED ; 
 int /*<<< orphan*/  HCI_UNCONFIGURED ; 
 int /*<<< orphan*/  HCI_USER_CHANNEL ; 
 size_t MGMT_INDEX_NONE ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_INDEX ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_PERMISSION_DENIED ; 
 int /*<<< orphan*/  MGMT_STATUS_UNKNOWN_COMMAND ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sock*,size_t,size_t,size_t,void*) ; 
 struct hci_dev* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 void* FUNC10 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (void*,struct msghdr*,size_t) ; 
 int FUNC12 (struct sock*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct hci_dev*) ; 
 int FUNC14 (struct sock*,struct hci_dev*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC15(struct hci_mgmt_chan *chan, struct sock *sk,
			struct msghdr *msg, size_t msglen)
{
	void *buf;
	u8 *cp;
	struct mgmt_hdr *hdr;
	u16 opcode, index, len;
	struct hci_dev *hdev = NULL;
	const struct hci_mgmt_handler *handler;
	bool var_len, no_hdev;
	int err;

	FUNC0("got %zu bytes", msglen);

	if (msglen < sizeof(*hdr))
		return -EINVAL;

	buf = FUNC10(msglen, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	if (FUNC11(buf, msg, msglen)) {
		err = -EFAULT;
		goto done;
	}

	hdr = buf;
	opcode = FUNC1(hdr->opcode);
	index = FUNC1(hdr->index);
	len = FUNC1(hdr->len);

	if (len != msglen - sizeof(*hdr)) {
		err = -EINVAL;
		goto done;
	}

	if (chan->channel == HCI_CHANNEL_CONTROL) {
		struct sk_buff *skb;

		/* Send event to monitor */
		skb = FUNC2(sk, index, opcode, len,
						  buf + sizeof(*hdr));
		if (skb) {
			FUNC6(HCI_CHANNEL_MONITOR, skb,
					    HCI_SOCK_TRUSTED, NULL);
			FUNC9(skb);
		}
	}

	if (opcode >= chan->handler_count ||
	    chan->handlers[opcode].func == NULL) {
		FUNC0("Unknown op %u", opcode);
		err = FUNC12(sk, index, opcode,
				      MGMT_STATUS_UNKNOWN_COMMAND);
		goto done;
	}

	handler = &chan->handlers[opcode];

	if (!FUNC7(sk, HCI_SOCK_TRUSTED) &&
	    !(handler->flags & HCI_MGMT_UNTRUSTED)) {
		err = FUNC12(sk, index, opcode,
				      MGMT_STATUS_PERMISSION_DENIED);
		goto done;
	}

	if (index != MGMT_INDEX_NONE) {
		hdev = FUNC3(index);
		if (!hdev) {
			err = FUNC12(sk, index, opcode,
					      MGMT_STATUS_INVALID_INDEX);
			goto done;
		}

		if (FUNC5(hdev, HCI_SETUP) ||
		    FUNC5(hdev, HCI_CONFIG) ||
		    FUNC5(hdev, HCI_USER_CHANNEL)) {
			err = FUNC12(sk, index, opcode,
					      MGMT_STATUS_INVALID_INDEX);
			goto done;
		}

		if (FUNC5(hdev, HCI_UNCONFIGURED) &&
		    !(handler->flags & HCI_MGMT_UNCONFIGURED)) {
			err = FUNC12(sk, index, opcode,
					      MGMT_STATUS_INVALID_INDEX);
			goto done;
		}
	}

	no_hdev = (handler->flags & HCI_MGMT_NO_HDEV);
	if (no_hdev != !hdev) {
		err = FUNC12(sk, index, opcode,
				      MGMT_STATUS_INVALID_INDEX);
		goto done;
	}

	var_len = (handler->flags & HCI_MGMT_VAR_LEN);
	if ((var_len && len < handler->data_len) ||
	    (!var_len && len != handler->data_len)) {
		err = FUNC12(sk, index, opcode,
				      MGMT_STATUS_INVALID_PARAMS);
		goto done;
	}

	if (hdev && chan->hdev_init)
		chan->hdev_init(sk, hdev);

	cp = buf + sizeof(*hdr);

	err = handler->func(sk, hdev, cp, len);
	if (err < 0)
		goto done;

	err = msglen;

done:
	if (hdev)
		FUNC4(hdev);

	FUNC8(buf);
	return err;
}