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
struct sock_diag_req {size_t sdiag_family; } ;
struct sock_diag_handler {int (* dump ) (struct sk_buff*,struct nlmsghdr*) ;int (* destroy ) (struct sk_buff*,struct nlmsghdr*) ;} ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; } ;

/* Variables and functions */
 size_t AF_MAX ; 
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 scalar_t__ SOCK_DESTROY ; 
 scalar_t__ SOCK_DIAG_BY_FAMILY ; 
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sock_diag_req* FUNC3 (struct nlmsghdr*) ; 
 int FUNC4 (struct nlmsghdr*) ; 
 struct sock_diag_handler** sock_diag_handlers ; 
 int /*<<< orphan*/  sock_diag_table_mutex ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 int FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct nlmsghdr *nlh)
{
	int err;
	struct sock_diag_req *req = FUNC3(nlh);
	const struct sock_diag_handler *hndl;

	if (FUNC4(nlh) < sizeof(*req))
		return -EINVAL;

	if (req->sdiag_family >= AF_MAX)
		return -EINVAL;
	req->sdiag_family = FUNC0(req->sdiag_family, AF_MAX);

	if (sock_diag_handlers[req->sdiag_family] == NULL)
		FUNC5(req->sdiag_family, 0);

	FUNC1(&sock_diag_table_mutex);
	hndl = sock_diag_handlers[req->sdiag_family];
	if (hndl == NULL)
		err = -ENOENT;
	else if (nlh->nlmsg_type == SOCK_DIAG_BY_FAMILY)
		err = hndl->dump(skb, nlh);
	else if (nlh->nlmsg_type == SOCK_DESTROY && hndl->destroy)
		err = hndl->destroy(skb, nlh);
	else
		err = -EOPNOTSUPP;
	FUNC2(&sock_diag_table_mutex);

	return err;
}