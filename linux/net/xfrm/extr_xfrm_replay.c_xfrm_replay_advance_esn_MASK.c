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
struct xfrm_state {TYPE_1__* repl; struct xfrm_replay_state_esn* replay_esn; } ;
struct xfrm_replay_state_esn {int replay_window; int seq; int seq_hi; unsigned int* bmp; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  (* notify ) (struct xfrm_state*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  XFRM_REPLAY_UPDATE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_state*) ; 
 int FUNC6 (struct xfrm_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_state*) ; 

__attribute__((used)) static void FUNC8(struct xfrm_state *x, __be32 net_seq)
{
	unsigned int bitnr, nr, i;
	int wrap;
	u32 diff, pos, seq, seq_hi;
	struct xfrm_replay_state_esn *replay_esn = x->replay_esn;

	if (!replay_esn->replay_window)
		return;

	seq = FUNC1(net_seq);
	pos = (replay_esn->seq - 1) % replay_esn->replay_window;
	seq_hi = FUNC6(x, net_seq);
	wrap = seq_hi - replay_esn->seq_hi;

	if ((!wrap && seq > replay_esn->seq) || wrap > 0) {
		if (FUNC0(!wrap))
			diff = seq - replay_esn->seq;
		else
			diff = ~replay_esn->seq + seq + 1;

		if (diff < replay_esn->replay_window) {
			for (i = 1; i < diff; i++) {
				bitnr = (pos + i) % replay_esn->replay_window;
				nr = bitnr >> 5;
				bitnr = bitnr & 0x1F;
				replay_esn->bmp[nr] &=  ~(1U << bitnr);
			}
		} else {
			nr = (replay_esn->replay_window - 1) >> 5;
			for (i = 0; i <= nr; i++)
				replay_esn->bmp[i] = 0;
		}

		bitnr = (pos + diff) % replay_esn->replay_window;
		replay_esn->seq = seq;

		if (FUNC3(wrap > 0))
			replay_esn->seq_hi++;
	} else {
		diff = replay_esn->seq - seq;

		if (pos >= diff)
			bitnr = (pos - diff) % replay_esn->replay_window;
		else
			bitnr = replay_esn->replay_window - (diff - pos);
	}

	FUNC5(x);

	nr = bitnr >> 5;
	bitnr = bitnr & 0x1F;
	replay_esn->bmp[nr] |= (1U << bitnr);

	if (FUNC4(FUNC7(x)))
		x->repl->notify(x, XFRM_REPLAY_UPDATE);
}