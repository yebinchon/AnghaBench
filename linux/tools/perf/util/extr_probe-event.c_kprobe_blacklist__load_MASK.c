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
struct list_head {int dummy; } ;
struct kprobe_blacklist_node {int /*<<< orphan*/  symbol; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PATH_MAX ; 
 char* FUNC1 () ; 
 int FUNC2 (char*,int,char*,char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 struct kprobe_blacklist_node* FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct list_head *blacklist)
{
	struct kprobe_blacklist_node *node;
	const char *__debugfs = FUNC1();
	char buf[PATH_MAX], *p;
	FILE *fp;
	int ret;

	if (__debugfs == NULL)
		return -ENOTSUP;

	ret = FUNC2(buf, PATH_MAX, "%s/kprobes/blacklist", __debugfs);
	if (ret < 0)
		return ret;

	fp = FUNC5(buf, "r");
	if (!fp)
		return -errno;

	ret = 0;
	while (FUNC4(buf, PATH_MAX, fp)) {
		node = FUNC13(sizeof(*node));
		if (!node) {
			ret = -ENOMEM;
			break;
		}
		FUNC0(&node->list);
		FUNC7(&node->list, blacklist);
		if (FUNC9(buf, "0x%lx-0x%lx", &node->start, &node->end) != 2) {
			ret = -EINVAL;
			break;
		}
		p = FUNC10(buf, '\t');
		if (p) {
			p++;
			if (p[FUNC12(p) - 1] == '\n')
				p[FUNC12(p) - 1] = '\0';
		} else
			p = (char *)"unknown";
		node->symbol = FUNC11(p);
		if (!node->symbol) {
			ret = -ENOMEM;
			break;
		}
		FUNC8("Blacklist: 0x%lx-0x%lx, %s\n",
			  node->start, node->end, node->symbol);
		ret++;
	}
	if (ret < 0)
		FUNC6(blacklist);
	FUNC3(fp);

	return ret;
}