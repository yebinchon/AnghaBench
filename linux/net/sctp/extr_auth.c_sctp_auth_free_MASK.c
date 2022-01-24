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
struct sctp_endpoint {int /*<<< orphan*/ * auth_hmacs; int /*<<< orphan*/ * auth_chunk_list; int /*<<< orphan*/ * auth_hmacs_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct sctp_endpoint *ep)
{
	FUNC0(ep->auth_hmacs_list);
	FUNC0(ep->auth_chunk_list);
	ep->auth_hmacs_list = NULL;
	ep->auth_chunk_list = NULL;
	FUNC1(ep->auth_hmacs);
	ep->auth_hmacs = NULL;
}