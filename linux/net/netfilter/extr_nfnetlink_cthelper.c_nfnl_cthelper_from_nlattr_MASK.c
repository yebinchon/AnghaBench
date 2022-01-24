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
struct nlattr {int dummy; } ;
struct nf_conn_help {int /*<<< orphan*/  data; TYPE_1__* helper; } ;
struct nf_conn {int dummy; } ;
struct TYPE_2__ {scalar_t__ data_len; } ;

/* Variables and functions */
 int EINVAL ; 
 struct nf_conn_help* FUNC0 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct nlattr *attr, struct nf_conn *ct)
{
	struct nf_conn_help *help = FUNC0(ct);

	if (attr == NULL)
		return -EINVAL;

	if (help->helper->data_len == 0)
		return -EINVAL;

	FUNC2(help->data, FUNC1(attr), sizeof(help->data));
	return 0;
}