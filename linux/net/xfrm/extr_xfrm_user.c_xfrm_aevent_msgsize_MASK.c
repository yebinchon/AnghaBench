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
struct xfrm_state {scalar_t__ replay_esn; } ;
struct xfrm_replay_state {int dummy; } ;
struct xfrm_mark {int dummy; } ;
struct xfrm_lifetime_cur {int dummy; } ;
struct xfrm_aevent_id {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline unsigned int FUNC4(struct xfrm_state *x)
{
	unsigned int replay_size = x->replay_esn ?
			      FUNC3(x->replay_esn) :
			      sizeof(struct xfrm_replay_state);

	return FUNC0(sizeof(struct xfrm_aevent_id))
	       + FUNC1(replay_size)
	       + FUNC2(sizeof(struct xfrm_lifetime_cur))
	       + FUNC1(sizeof(struct xfrm_mark))
	       + FUNC1(4) /* XFRM_AE_RTHR */
	       + FUNC1(4); /* XFRM_AE_ETHR */
}