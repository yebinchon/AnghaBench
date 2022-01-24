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
struct qstr {char const* name; int /*<<< orphan*/  hash_len; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,char const*) ; 

struct dentry *FUNC2(struct dentry *parent, const char *name)
{
	struct qstr q;

	q.name = name;
	q.hash_len = FUNC1(parent, name);
	return FUNC0(parent, &q);
}