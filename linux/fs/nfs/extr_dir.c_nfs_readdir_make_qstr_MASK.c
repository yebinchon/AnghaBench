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
struct qstr {unsigned int len; int /*<<< orphan*/  hash; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC3(struct qstr *string, const char *name, unsigned int len)
{
	string->len = len;
	string->name = FUNC1(name, len, GFP_KERNEL);
	if (string->name == NULL)
		return -ENOMEM;
	/*
	 * Avoid a kmemleak false positive. The pointer to the name is stored
	 * in a page cache page which kmemleak does not scan.
	 */
	FUNC2(string->name);
	string->hash = FUNC0(NULL, name, len);
	return 0;
}