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
struct search_path {char const* dirname; struct search_path* next; } ;
struct TYPE_2__ {char* dir; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 TYPE_1__* current_srcfile ; 
 struct search_path* search_path_head ; 
 char* FUNC1 (char const*,char const*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static char *FUNC2(const char *fname, FILE **fp)
{
	const char *cur_dir = NULL;
	struct search_path *node;
	char *fullname;

	/* Try current directory first */
	FUNC0(fp);
	if (current_srcfile)
		cur_dir = current_srcfile->dir;
	fullname = FUNC1(cur_dir, fname, fp);

	/* Failing that, try each search path in turn */
	for (node = search_path_head; !*fp && node; node = node->next)
		fullname = FUNC1(node->dirname, fname, fp);

	return fullname;
}