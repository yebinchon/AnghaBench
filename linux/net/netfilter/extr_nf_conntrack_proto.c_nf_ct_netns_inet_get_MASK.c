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
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net *net)
{
	int err;

	err = FUNC0(net, NFPROTO_IPV4);
	if (err < 0)
		goto err1;
	err = FUNC0(net, NFPROTO_IPV6);
	if (err < 0)
		goto err2;

	return err;
err2:
	FUNC1(net, NFPROTO_IPV4);
err1:
	return err;
}