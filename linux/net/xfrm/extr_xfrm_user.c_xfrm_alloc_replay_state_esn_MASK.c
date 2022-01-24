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
struct xfrm_replay_state_esn {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_replay_state_esn*) ; 
 struct xfrm_replay_state_esn* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_replay_state_esn*,struct xfrm_replay_state_esn*,unsigned int) ; 
 struct xfrm_replay_state_esn* FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr*) ; 
 unsigned int FUNC5 (struct xfrm_replay_state_esn*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_replay_state_esn **replay_esn,
				       struct xfrm_replay_state_esn **preplay_esn,
				       struct nlattr *rta)
{
	struct xfrm_replay_state_esn *p, *pp, *up;
	unsigned int klen, ulen;

	if (!rta)
		return 0;

	up = FUNC3(rta);
	klen = FUNC5(up);
	ulen = FUNC4(rta) >= (int)klen ? klen : sizeof(*up);

	p = FUNC1(klen, GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	pp = FUNC1(klen, GFP_KERNEL);
	if (!pp) {
		FUNC0(p);
		return -ENOMEM;
	}

	FUNC2(p, up, ulen);
	FUNC2(pp, up, ulen);

	*replay_esn = p;
	*preplay_esn = pp;

	return 0;
}