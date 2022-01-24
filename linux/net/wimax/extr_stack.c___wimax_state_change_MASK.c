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
struct wimax_dev {int state; int /*<<< orphan*/  net_dev; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
typedef  enum wimax_st { ____Placeholder_wimax_st } wimax_st ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
#define  WIMAX_ST_CONNECTED 137 
#define  WIMAX_ST_CONNECTING 136 
#define  WIMAX_ST_DOWN 135 
#define  WIMAX_ST_RADIO_OFF 134 
#define  WIMAX_ST_READY 133 
#define  WIMAX_ST_SCANNING 132 
#define  WIMAX_ST_UNINITIALIZED 131 
#define  __WIMAX_ST_INVALID 130 
#define  __WIMAX_ST_NULL 129 
#define  __WIMAX_ST_QUIESCING 128 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wimax_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct device*,char*,struct wimax_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct device*,char*,struct wimax_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct device* FUNC12 (struct wimax_dev*) ; 
 struct sk_buff* FUNC13 (struct wimax_dev*,int,int,void**) ; 
 int /*<<< orphan*/  FUNC14 (struct wimax_dev*,struct sk_buff*,void*) ; 

void FUNC15(struct wimax_dev *wimax_dev, enum wimax_st new_state)
{
	struct device *dev = FUNC12(wimax_dev);
	enum wimax_st old_state = wimax_dev->state;
	struct sk_buff *stch_skb;
	void *header;

	FUNC6(3, dev, "(wimax_dev %p new_state %u [old %u])\n",
		  wimax_dev, new_state, old_state);

	if (FUNC2(new_state >= __WIMAX_ST_INVALID)) {
		FUNC7(dev, "SW BUG: requesting invalid state %u\n",
			new_state);
		goto out;
	}
	if (old_state == new_state)
		goto out;
	header = NULL;	/* gcc complains? can't grok why */
	stch_skb = FUNC13(
		wimax_dev, new_state, old_state, &header);

	/* Verify the state transition and do exit-from-state actions */
	switch (old_state) {
	case __WIMAX_ST_NULL:
		FUNC3(old_state, new_state,
				  1 << WIMAX_ST_DOWN);
		break;
	case WIMAX_ST_DOWN:
		FUNC3(old_state, new_state,
				  1 << __WIMAX_ST_QUIESCING
				  | 1 << WIMAX_ST_UNINITIALIZED
				  | 1 << WIMAX_ST_RADIO_OFF);
		break;
	case __WIMAX_ST_QUIESCING:
		FUNC3(old_state, new_state, 1 << WIMAX_ST_DOWN);
		break;
	case WIMAX_ST_UNINITIALIZED:
		FUNC3(old_state, new_state,
				  1 << __WIMAX_ST_QUIESCING
				  | 1 << WIMAX_ST_RADIO_OFF);
		break;
	case WIMAX_ST_RADIO_OFF:
		FUNC3(old_state, new_state,
				  1 << __WIMAX_ST_QUIESCING
				  | 1 << WIMAX_ST_READY);
		break;
	case WIMAX_ST_READY:
		FUNC3(old_state, new_state,
				  1 << __WIMAX_ST_QUIESCING
				  | 1 << WIMAX_ST_RADIO_OFF
				  | 1 << WIMAX_ST_SCANNING
				  | 1 << WIMAX_ST_CONNECTING
				  | 1 << WIMAX_ST_CONNECTED);
		break;
	case WIMAX_ST_SCANNING:
		FUNC3(old_state, new_state,
				  1 << __WIMAX_ST_QUIESCING
				  | 1 << WIMAX_ST_RADIO_OFF
				  | 1 << WIMAX_ST_READY
				  | 1 << WIMAX_ST_CONNECTING
				  | 1 << WIMAX_ST_CONNECTED);
		break;
	case WIMAX_ST_CONNECTING:
		FUNC3(old_state, new_state,
				  1 << __WIMAX_ST_QUIESCING
				  | 1 << WIMAX_ST_RADIO_OFF
				  | 1 << WIMAX_ST_READY
				  | 1 << WIMAX_ST_SCANNING
				  | 1 << WIMAX_ST_CONNECTED);
		break;
	case WIMAX_ST_CONNECTED:
		FUNC3(old_state, new_state,
				  1 << __WIMAX_ST_QUIESCING
				  | 1 << WIMAX_ST_RADIO_OFF
				  | 1 << WIMAX_ST_READY);
		FUNC10(wimax_dev->net_dev);
		FUNC8(wimax_dev->net_dev);
		break;
	case __WIMAX_ST_INVALID:
	default:
		FUNC7(dev, "SW BUG: wimax_dev %p is in unknown state %u\n",
			wimax_dev, wimax_dev->state);
		FUNC2(1);
		goto out;
	}

	/* Execute the actions of entry to the new state */
	switch (new_state) {
	case __WIMAX_ST_NULL:
		FUNC7(dev, "SW BUG: wimax_dev %p entering NULL state "
			"from %u\n", wimax_dev, wimax_dev->state);
		FUNC2(1);		/* Nobody can enter this state */
		break;
	case WIMAX_ST_DOWN:
		break;
	case __WIMAX_ST_QUIESCING:
		break;
	case WIMAX_ST_UNINITIALIZED:
		break;
	case WIMAX_ST_RADIO_OFF:
		break;
	case WIMAX_ST_READY:
		break;
	case WIMAX_ST_SCANNING:
		break;
	case WIMAX_ST_CONNECTING:
		break;
	case WIMAX_ST_CONNECTED:
		FUNC9(wimax_dev->net_dev);
		FUNC11(wimax_dev->net_dev);
		break;
	case __WIMAX_ST_INVALID:
	default:
		FUNC0();
	}
	FUNC4(wimax_dev, new_state);
	if (!FUNC1(stch_skb))
		FUNC14(wimax_dev, stch_skb, header);
out:
	FUNC5(3, dev, "(wimax_dev %p new_state %u [old %u]) = void\n",
		wimax_dev, new_state, old_state);
}