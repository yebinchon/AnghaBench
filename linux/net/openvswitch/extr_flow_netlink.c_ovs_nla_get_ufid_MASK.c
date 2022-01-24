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
struct sw_flow_id {int ufid_len; int /*<<< orphan*/  ufid; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nlattr const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const*) ; 

bool FUNC3(struct sw_flow_id *sfid, const struct nlattr *attr,
		      bool log)
{
	sfid->ufid_len = FUNC0(attr, log);
	if (sfid->ufid_len)
		FUNC1(sfid->ufid, FUNC2(attr), sfid->ufid_len);

	return sfid->ufid_len;
}