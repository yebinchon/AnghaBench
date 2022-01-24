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
struct hpfs_dirent {int dummy; } ;
struct dnode {int dummy; } ;

/* Variables and functions */
 struct hpfs_dirent* FUNC0 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC1 (struct dnode*) ; 
 struct hpfs_dirent* FUNC2 (struct dnode*) ; 

__attribute__((used)) static struct hpfs_dirent *FUNC3(struct dnode *d)
{
	struct hpfs_dirent *de, *de_end, *dee = NULL;
	de_end = FUNC1(d);
	for (de = FUNC2(d); de < de_end; de = FUNC0(de)) {
		dee = de;
	}	
	return dee;
}