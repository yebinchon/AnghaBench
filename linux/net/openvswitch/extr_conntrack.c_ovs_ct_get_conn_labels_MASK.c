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
struct nf_conn_labels {int dummy; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nf_conn*) ; 
 struct nf_conn_labels* FUNC1 (struct nf_conn*) ; 

__attribute__((used)) static struct nf_conn_labels *FUNC2(struct nf_conn *ct)
{
	struct nf_conn_labels *cl;

	cl = FUNC1(ct);
	if (!cl) {
		FUNC0(ct);
		cl = FUNC1(ct);
	}

	return cl;
}