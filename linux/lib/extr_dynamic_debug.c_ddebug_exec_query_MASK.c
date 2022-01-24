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
struct ddebug_query {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAXWORDS ; 
 int FUNC0 (struct ddebug_query*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (char*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC2 (char**,int,struct ddebug_query*,char const*) ; 
 int FUNC3 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ddebug_query*,char*) ; 

__attribute__((used)) static int FUNC6(char *query_string, const char *modname)
{
	unsigned int flags = 0, mask = 0;
	struct ddebug_query query;
#define MAXWORDS 9
	int nwords, nfound;
	char *words[MAXWORDS];

	nwords = FUNC3(query_string, words, MAXWORDS);
	if (nwords <= 0) {
		FUNC4("tokenize failed\n");
		return -EINVAL;
	}
	/* check flags 1st (last arg) so query is pairs of spec,val */
	if (FUNC1(words[nwords-1], &flags, &mask)) {
		FUNC4("flags parse failed\n");
		return -EINVAL;
	}
	if (FUNC2(words, nwords-1, &query, modname)) {
		FUNC4("query parse failed\n");
		return -EINVAL;
	}
	/* actually go and implement the change */
	nfound = FUNC0(&query, flags, mask);
	FUNC5(&query, nfound ? "applied" : "no-match");

	return nfound;
}