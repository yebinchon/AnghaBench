#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sock_filter {int dummy; } ;
struct TYPE_4__ {int Rs; size_t Pc; int R; } ;

/* Variables and functions */
 TYPE_1__ bpf_curr ; 
 int FUNC0 (TYPE_1__*,struct sock_filter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct sock_filter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sock_filter *f, uint16_t bpf_len,
			    uint8_t *pkt, uint32_t pkt_caplen,
			    uint32_t pkt_len, int next)
{
	bool stop = false;
	int i = 1;

	while (bpf_curr.Rs == false && stop == false) {
		FUNC1();

		if (i++ == next)
			stop = FUNC0(&bpf_curr, f, pkt,
						     pkt_caplen, pkt_len);

		FUNC2(&bpf_curr, &f[bpf_curr.Pc], pkt, pkt_caplen,
				pkt_len);
		bpf_curr.Pc++;
	}

	return stop ? -1 : bpf_curr.R;
}