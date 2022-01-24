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
struct policydb_compat_info {int version; } ;

/* Variables and functions */
 int FUNC0 (struct policydb_compat_info*) ; 
 struct policydb_compat_info* policydb_compat ; 

__attribute__((used)) static struct policydb_compat_info *FUNC1(int version)
{
	int i;
	struct policydb_compat_info *info = NULL;

	for (i = 0; i < FUNC0(policydb_compat); i++) {
		if (policydb_compat[i].version == version) {
			info = &policydb_compat[i];
			break;
		}
	}
	return info;
}