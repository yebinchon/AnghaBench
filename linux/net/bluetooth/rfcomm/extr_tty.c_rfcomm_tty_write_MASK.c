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
struct tty_struct {scalar_t__ driver_data; } ;
struct sk_buff {int dummy; } ;
struct rfcomm_dlc {int /*<<< orphan*/  mtu; } ;
struct rfcomm_dev {struct rfcomm_dlc* dlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct tty_struct*,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RFCOMM_SKB_HEAD_RESERVE ; 
 scalar_t__ RFCOMM_SKB_RESERVE ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_dlc*,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct rfcomm_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty, const unsigned char *buf, int count)
{
	struct rfcomm_dev *dev = (struct rfcomm_dev *) tty->driver_data;
	struct rfcomm_dlc *dlc = dev->dlc;
	struct sk_buff *skb;
	int sent = 0, size;

	FUNC0("tty %p count %d", tty, count);

	while (count) {
		size = FUNC1(uint, count, dlc->mtu);

		skb = FUNC3(dev, size + RFCOMM_SKB_RESERVE, GFP_ATOMIC);
		if (!skb)
			break;

		FUNC5(skb, RFCOMM_SKB_HEAD_RESERVE);

		FUNC4(skb, buf + sent, size);

		FUNC2(dlc, skb);

		sent  += size;
		count -= size;
	}

	return sent;
}