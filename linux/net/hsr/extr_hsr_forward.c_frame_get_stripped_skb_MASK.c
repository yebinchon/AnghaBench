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
struct sk_buff {int dummy; } ;
struct hsr_port {int dummy; } ;
struct hsr_frame_info {scalar_t__ skb_std; int /*<<< orphan*/  skb_hsr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct hsr_frame_info*) ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC2(struct hsr_frame_info *frame,
					      struct hsr_port *port)
{
	if (!frame->skb_std)
		frame->skb_std = FUNC0(frame->skb_hsr, frame);
	return FUNC1(frame->skb_std, GFP_ATOMIC);
}