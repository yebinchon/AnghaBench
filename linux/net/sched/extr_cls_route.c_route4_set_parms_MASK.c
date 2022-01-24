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
struct tcf_proto {int dummy; } ;
struct route4_head {int /*<<< orphan*/ * table; } ;
struct TYPE_2__ {void* classid; } ;
struct route4_filter {int handle; int id; int iif; TYPE_1__ res; struct tcf_proto* tp; struct route4_bucket* bkt; int /*<<< orphan*/  next; int /*<<< orphan*/  exts; } ;
struct route4_bucket {int /*<<< orphan*/ * ht; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t TCA_ROUTE4_CLASSID ; 
 size_t TCA_ROUTE4_FROM ; 
 size_t TCA_ROUTE4_IIF ; 
 size_t TCA_ROUTE4_TO ; 
 unsigned int FUNC0 (int) ; 
 struct route4_bucket* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct route4_bucket*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_proto*,TYPE_1__*,unsigned long) ; 
 int FUNC6 (struct net*,struct tcf_proto*,struct nlattr**,struct nlattr*,int /*<<< orphan*/ *,int,int,struct netlink_ext_ack*) ; 
 unsigned int FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct net *net, struct tcf_proto *tp,
			    unsigned long base, struct route4_filter *f,
			    u32 handle, struct route4_head *head,
			    struct nlattr **tb, struct nlattr *est, int new,
			    bool ovr, struct netlink_ext_ack *extack)
{
	u32 id = 0, to = 0, nhandle = 0x8000;
	struct route4_filter *fp;
	unsigned int h1;
	struct route4_bucket *b;
	int err;

	err = FUNC6(net, tp, tb, est, &f->exts, ovr, true, extack);
	if (err < 0)
		return err;

	if (tb[TCA_ROUTE4_TO]) {
		if (new && handle & 0x8000)
			return -EINVAL;
		to = FUNC2(tb[TCA_ROUTE4_TO]);
		if (to > 0xFF)
			return -EINVAL;
		nhandle = to;
	}

	if (tb[TCA_ROUTE4_FROM]) {
		if (tb[TCA_ROUTE4_IIF])
			return -EINVAL;
		id = FUNC2(tb[TCA_ROUTE4_FROM]);
		if (id > 0xFF)
			return -EINVAL;
		nhandle |= id << 16;
	} else if (tb[TCA_ROUTE4_IIF]) {
		id = FUNC2(tb[TCA_ROUTE4_IIF]);
		if (id > 0x7FFF)
			return -EINVAL;
		nhandle |= (id | 0x8000) << 16;
	} else
		nhandle |= 0xFFFF << 16;

	if (handle && new) {
		nhandle |= handle & 0x7F00;
		if (nhandle != handle)
			return -EINVAL;
	}

	h1 = FUNC7(nhandle);
	b = FUNC4(head->table[h1]);
	if (!b) {
		b = FUNC1(sizeof(struct route4_bucket), GFP_KERNEL);
		if (b == NULL)
			return -ENOBUFS;

		FUNC3(head->table[h1], b);
	} else {
		unsigned int h2 = FUNC0(nhandle >> 16);

		for (fp = FUNC4(b->ht[h2]);
		     fp;
		     fp = FUNC4(fp->next))
			if (fp->handle == f->handle)
				return -EEXIST;
	}

	if (tb[TCA_ROUTE4_TO])
		f->id = to;

	if (tb[TCA_ROUTE4_FROM])
		f->id = to | id<<16;
	else if (tb[TCA_ROUTE4_IIF])
		f->iif = id;

	f->handle = nhandle;
	f->bkt = b;
	f->tp = tp;

	if (tb[TCA_ROUTE4_CLASSID]) {
		f->res.classid = FUNC2(tb[TCA_ROUTE4_CLASSID]);
		FUNC5(tp, &f->res, base);
	}

	return 0;
}