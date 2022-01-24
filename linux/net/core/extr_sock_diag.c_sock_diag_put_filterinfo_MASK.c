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
struct sock_fprog_kern {int /*<<< orphan*/  filter; } ;
struct sock {int /*<<< orphan*/  sk_filter; } ;
struct sk_filter {TYPE_1__* prog; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {struct sock_fprog_kern* orig_prog; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 unsigned int FUNC0 (struct sock_fprog_kern*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int,unsigned int) ; 
 struct sk_filter* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(bool may_report_filterinfo, struct sock *sk,
			     struct sk_buff *skb, int attrtype)
{
	struct sock_fprog_kern *fprog;
	struct sk_filter *filter;
	struct nlattr *attr;
	unsigned int flen;
	int err = 0;

	if (!may_report_filterinfo) {
		FUNC3(skb, attrtype, 0);
		return 0;
	}

	FUNC5();
	filter = FUNC4(sk->sk_filter);
	if (!filter)
		goto out;

	fprog = filter->prog->orig_prog;
	if (!fprog)
		goto out;

	flen = FUNC0(fprog);

	attr = FUNC3(skb, attrtype, flen);
	if (attr == NULL) {
		err = -EMSGSIZE;
		goto out;
	}

	FUNC1(FUNC2(attr), fprog->filter, flen);
out:
	FUNC6();
	return err;
}