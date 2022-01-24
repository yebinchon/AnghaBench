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
struct kobject {int dummy; } ;
struct hstate {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int,struct hstate*,int,unsigned long,size_t) ; 
 struct hstate* FUNC1 (struct kobject*,int*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC3(bool obey_mempolicy,
					 struct kobject *kobj, const char *buf,
					 size_t len)
{
	struct hstate *h;
	unsigned long count;
	int nid;
	int err;

	err = FUNC2(buf, 10, &count);
	if (err)
		return err;

	h = FUNC1(kobj, &nid);
	return FUNC0(obey_mempolicy, h, nid, count, len);
}