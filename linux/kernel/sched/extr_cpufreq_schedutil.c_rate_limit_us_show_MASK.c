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
struct sugov_tunables {int rate_limit_us; } ;
struct gov_attr_set {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct sugov_tunables* FUNC1 (struct gov_attr_set*) ; 

__attribute__((used)) static ssize_t FUNC2(struct gov_attr_set *attr_set, char *buf)
{
	struct sugov_tunables *tunables = FUNC1(attr_set);

	return FUNC0(buf, "%u\n", tunables->rate_limit_us);
}