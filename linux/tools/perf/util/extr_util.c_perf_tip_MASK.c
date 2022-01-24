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
struct strlist_config {char const* dirname; int file_only; } ;
struct strlist {int dummy; } ;
struct str_node {int /*<<< orphan*/  s; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct strlist*) ; 
 struct str_node* FUNC3 (struct strlist*,int) ; 
 struct strlist* FUNC4 (char*,struct strlist_config*) ; 
 int FUNC5 (struct strlist*) ; 

const char *FUNC6(const char *dirpath)
{
	struct strlist *tips;
	struct str_node *node;
	char *tip = NULL;
	struct strlist_config conf = {
		.dirname = dirpath,
		.file_only = true,
	};

	tips = FUNC4("tips.txt", &conf);
	if (tips == NULL)
		return errno == ENOENT ? NULL :
			"Tip: check path of tips.txt or get more memory! ;-p";

	if (FUNC5(tips) == 0)
		goto out;

	node = FUNC3(tips, FUNC1() % FUNC5(tips));
	if (FUNC0(&tip, "Tip: %d", node->s) < 0)
		tip = (char *)"Tip: get more memory! ;-)";

out:
	FUNC2(tips);

	return tip;
}