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
struct nsinfo {int dummy; } ;
struct nscookie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nsinfo*,struct nscookie*) ; 
 int /*<<< orphan*/  FUNC1 (struct nscookie*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 

char *FUNC3(const char *path, struct nsinfo *nsi)
{
	char *rpath;
	struct nscookie nsc;

	FUNC0(nsi, &nsc);
	rpath = FUNC2(path, NULL);
	FUNC1(&nsc);

	return rpath;
}