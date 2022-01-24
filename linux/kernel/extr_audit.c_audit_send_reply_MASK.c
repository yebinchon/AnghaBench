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
struct task_struct {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct audit_reply {struct sk_buff* skb; int /*<<< orphan*/  portid; int /*<<< orphan*/  net; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int,int,int,int,void const*,int) ; 
 int /*<<< orphan*/  audit_send_reply_thread ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_reply*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct audit_reply* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC7 (int /*<<< orphan*/ ,struct audit_reply*,char*) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct sk_buff *request_skb, int seq, int type, int done,
			     int multi, const void *payload, int size)
{
	struct net *net = FUNC8(FUNC1(request_skb).sk);
	struct sk_buff *skb;
	struct task_struct *tsk;
	struct audit_reply *reply = FUNC6(sizeof(struct audit_reply),
					    GFP_KERNEL);

	if (!reply)
		return;

	skb = FUNC2(seq, type, done, multi, payload, size);
	if (!skb)
		goto out;

	reply->net = FUNC3(net);
	reply->portid = FUNC1(request_skb).portid;
	reply->skb = skb;

	tsk = FUNC7(audit_send_reply_thread, reply, "audit_send_reply");
	if (!FUNC0(tsk))
		return;
	FUNC5(skb);
out:
	FUNC4(reply);
}