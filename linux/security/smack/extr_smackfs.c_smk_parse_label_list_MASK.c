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
struct smack_known_list_elem {int /*<<< orphan*/  list; struct smack_known* smk_label; } ;
struct smack_known {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct smack_known*) ; 
 int FUNC1 (struct smack_known*) ; 
 struct smack_known_list_elem* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct smack_known* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static int FUNC6(char *data, struct list_head *list)
{
	char *tok;
	struct smack_known *skp;
	struct smack_known_list_elem *sklep;

	while ((tok = FUNC5(&data, " ")) != NULL) {
		if (!*tok)
			continue;

		skp = FUNC4(tok, 0);
		if (FUNC0(skp))
			return FUNC1(skp);

		sklep = FUNC2(sizeof(*sklep), GFP_KERNEL);
		if (sklep == NULL)
			return -ENOMEM;

		sklep->smk_label = skp;
		FUNC3(&sklep->list, list);
	}

	return 0;
}