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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
#define  PAD 128 
 scalar_t__ PN_PIPE_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sock*,struct sk_buff*,scalar_t__,scalar_t__ const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sock *sk, struct sk_buff *skb, u8 code,
				gfp_t priority)
{
	static const u8 data[4] = { PAD, PAD, PAD, 0 /* sub-blocks */ };
	FUNC0(code == PN_PIPE_NO_ERROR);
	return FUNC1(sk, skb, code, data, sizeof(data), priority);
}