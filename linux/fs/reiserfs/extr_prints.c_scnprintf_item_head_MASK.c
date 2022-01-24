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
struct item_head {int /*<<< orphan*/  ih_key; } ;

/* Variables and functions */
 scalar_t__ KEY_FORMAT_3_6 ; 
 int /*<<< orphan*/  FUNC0 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct item_head*) ; 
 scalar_t__ FUNC3 (struct item_head*) ; 
 int FUNC4 (char*,size_t,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(char *buf, size_t size, struct item_head *ih)
{
	if (ih) {
		char *p = buf;
		char * const end = buf + size;

		p += FUNC4(p, end - p, "%s",
			       (FUNC3(ih) == KEY_FORMAT_3_6) ?
			       "*3.6* " : "*3.5*");

		p += FUNC5(p, end - p, &ih->ih_key);

		p += FUNC4(p, end - p,
			       ", item_len %d, item_location %d, free_space(entry_count) %d",
			       FUNC1(ih), FUNC2(ih),
			       FUNC0(ih));
		return p - buf;
	} else
		return FUNC4(buf, size, "[NULL]");
}