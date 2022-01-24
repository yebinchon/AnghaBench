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
struct qstr {int /*<<< orphan*/  name; } ;
struct inode {int dummy; } ;
struct fat_slot_info {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,unsigned int,struct fat_slot_info*) ; 
 unsigned int FUNC1 (struct qstr const*) ; 

__attribute__((used)) static int FUNC2(struct inode *dir, const struct qstr *qname,
		     struct fat_slot_info *sinfo)
{
	unsigned int len = FUNC1(qname);
	if (len == 0)
		return -ENOENT;
	return FUNC0(dir, qname->name, len, sinfo);
}