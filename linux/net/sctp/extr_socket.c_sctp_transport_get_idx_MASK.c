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
struct sctp_transport {int dummy; } ;
struct rhashtable_iter {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_transport*) ; 
 struct sctp_transport* SEQ_START_TOKEN ; 
 struct sctp_transport* FUNC1 (struct net*,struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_transport*) ; 

struct sctp_transport *FUNC3(struct net *net,
					      struct rhashtable_iter *iter,
					      int pos)
{
	struct sctp_transport *t;

	if (!pos)
		return SEQ_START_TOKEN;

	while ((t = FUNC1(net, iter)) && !FUNC0(t)) {
		if (!--pos)
			break;
		FUNC2(t);
	}

	return t;
}