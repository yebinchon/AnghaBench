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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct smp_dev {int local_oob; struct crypto_shash* tfm_ecdh; struct crypto_shash* tfm_cmac; } ;
struct l2cap_chan {int /*<<< orphan*/  nesting; int /*<<< orphan*/ * ops; int /*<<< orphan*/  imtu; int /*<<< orphan*/  mode; int /*<<< orphan*/  state; int /*<<< orphan*/  src_type; int /*<<< orphan*/  src; struct smp_dev* data; } ;
struct hci_dev {int /*<<< orphan*/  bdaddr; } ;
struct crypto_shash {int dummy; } ;
typedef  struct crypto_shash crypto_kpp ;

/* Variables and functions */
 scalar_t__ ADDR_LE_DEV_PUBLIC ; 
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int /*<<< orphan*/  BDADDR_LE_PUBLIC ; 
 int /*<<< orphan*/  BDADDR_LE_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BT_LISTEN ; 
 int /*<<< orphan*/  CRYPTO_ALG_INTERNAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct l2cap_chan* FUNC1 (struct crypto_shash*) ; 
 struct l2cap_chan* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (struct crypto_shash*) ; 
 int /*<<< orphan*/  L2CAP_CID_SMP ; 
 int /*<<< orphan*/  L2CAP_CID_SMP_BREDR ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_MTU ; 
 int /*<<< orphan*/  L2CAP_MODE_BASIC ; 
 int /*<<< orphan*/  L2CAP_NESTING_PARENT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct crypto_shash* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_shash* FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,int /*<<< orphan*/ *,scalar_t__*) ; 
 struct smp_dev* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct smp_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 struct l2cap_chan* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  smp_root_chan_ops ; 

__attribute__((used)) static struct l2cap_chan *FUNC16(struct hci_dev *hdev, u16 cid)
{
	struct l2cap_chan *chan;
	struct smp_dev *smp;
	struct crypto_shash *tfm_cmac;
	struct crypto_kpp *tfm_ecdh;

	if (cid == L2CAP_CID_SMP_BREDR) {
		smp = NULL;
		goto create_chan;
	}

	smp = FUNC11(sizeof(*smp), GFP_KERNEL);
	if (!smp)
		return FUNC2(-ENOMEM);

	tfm_cmac = FUNC7("cmac(aes)", 0, 0);
	if (FUNC3(tfm_cmac)) {
		FUNC0("Unable to create CMAC crypto context");
		FUNC12(smp);
		return FUNC1(tfm_cmac);
	}

	tfm_ecdh = FUNC6("ecdh", CRYPTO_ALG_INTERNAL, 0);
	if (FUNC3(tfm_ecdh)) {
		FUNC0("Unable to create ECDH crypto context");
		FUNC9(tfm_cmac);
		FUNC12(smp);
		return FUNC1(tfm_ecdh);
	}

	smp->local_oob = false;
	smp->tfm_cmac = tfm_cmac;
	smp->tfm_ecdh = tfm_ecdh;

create_chan:
	chan = FUNC14();
	if (!chan) {
		if (smp) {
			FUNC9(smp->tfm_cmac);
			FUNC8(smp->tfm_ecdh);
			FUNC12(smp);
		}
		return FUNC2(-ENOMEM);
	}

	chan->data = smp;

	FUNC13(chan, cid);

	FUNC15(chan);

	if (cid == L2CAP_CID_SMP) {
		u8 bdaddr_type;

		FUNC10(hdev, &chan->src, &bdaddr_type);

		if (bdaddr_type == ADDR_LE_DEV_PUBLIC)
			chan->src_type = BDADDR_LE_PUBLIC;
		else
			chan->src_type = BDADDR_LE_RANDOM;
	} else {
		FUNC5(&chan->src, &hdev->bdaddr);
		chan->src_type = BDADDR_BREDR;
	}

	chan->state = BT_LISTEN;
	chan->mode = L2CAP_MODE_BASIC;
	chan->imtu = L2CAP_DEFAULT_MTU;
	chan->ops = &smp_root_chan_ops;

	/* Set correct nesting level for a parent/listening channel */
	FUNC4(&chan->nesting, L2CAP_NESTING_PARENT);

	return chan;
}