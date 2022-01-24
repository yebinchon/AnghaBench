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
struct c2c_hist_entry {int /*<<< orphan*/  nodestr; int /*<<< orphan*/  nodeset; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  nodes_cnt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ c2c ; 
 int FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct c2c_hist_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct c2c_hist_entry *c2c_he)
{
	char buf[30];
	int len;

	if (c2c_he->nodestr)
		return 0;

	if (FUNC1(c2c_he->nodeset, c2c.nodes_cnt)) {
		len = FUNC0(c2c_he->nodeset, c2c.nodes_cnt,
				      buf, sizeof(buf));
	} else {
		len = FUNC2(buf, sizeof(buf), "N/A");
	}

	FUNC3(c2c_he, len);
	c2c_he->nodestr = FUNC4(buf);
	return c2c_he->nodestr ? 0 : -ENOMEM;
}