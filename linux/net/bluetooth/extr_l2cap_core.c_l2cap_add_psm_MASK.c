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
typedef  scalar_t__ u16 ;
struct l2cap_chan {void* sport; void* psm; int /*<<< orphan*/  src_type; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  void* __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int EADDRINUSE ; 
 int EINVAL ; 
 scalar_t__ L2CAP_PSM_AUTO_END ; 
 scalar_t__ L2CAP_PSM_DYN_START ; 
 scalar_t__ L2CAP_PSM_LE_DYN_END ; 
 scalar_t__ L2CAP_PSM_LE_DYN_START ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chan_list_lock ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct l2cap_chan *chan, bdaddr_t *src, __le16 psm)
{
	int err;

	FUNC2(&chan_list_lock);

	if (psm && FUNC0(psm, src, chan->src_type)) {
		err = -EADDRINUSE;
		goto done;
	}

	if (psm) {
		chan->psm = psm;
		chan->sport = psm;
		err = 0;
	} else {
		u16 p, start, end, incr;

		if (chan->src_type == BDADDR_BREDR) {
			start = L2CAP_PSM_DYN_START;
			end = L2CAP_PSM_AUTO_END;
			incr = 2;
		} else {
			start = L2CAP_PSM_LE_DYN_START;
			end = L2CAP_PSM_LE_DYN_END;
			incr = 1;
		}

		err = -EINVAL;
		for (p = start; p <= end; p += incr)
			if (!FUNC0(FUNC1(p), src,
							 chan->src_type)) {
				chan->psm   = FUNC1(p);
				chan->sport = FUNC1(p);
				err = 0;
				break;
			}
	}

done:
	FUNC3(&chan_list_lock);
	return err;
}