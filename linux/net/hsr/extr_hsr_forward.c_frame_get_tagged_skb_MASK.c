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
struct hsr_port {scalar_t__ type; } ;
struct hsr_frame_info {int /*<<< orphan*/  skb_std; scalar_t__ skb_hsr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HSR_PT_SLAVE_A ; 
 scalar_t__ HSR_PT_SLAVE_B ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,struct hsr_frame_info*,struct hsr_port*) ; 
 struct sk_buff* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct hsr_frame_info *frame,
					    struct hsr_port *port)
{
	if (frame->skb_hsr)
		return FUNC2(frame->skb_hsr, GFP_ATOMIC);

	if (port->type != HSR_PT_SLAVE_A && port->type != HSR_PT_SLAVE_B) {
		FUNC0(1, "HSR: Bug: trying to create a tagged frame for a non-ring port");
		return NULL;
	}

	return FUNC1(frame->skb_std, frame, port);
}