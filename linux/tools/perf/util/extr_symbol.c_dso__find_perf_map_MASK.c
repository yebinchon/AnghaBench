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
struct nsinfo {int need_setns; int nstgid; int tgid; } ;
struct nscookie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct nsinfo* FUNC1 (struct nsinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct nsinfo*,struct nscookie*) ; 
 int /*<<< orphan*/  FUNC3 (struct nscookie*) ; 
 int /*<<< orphan*/  FUNC4 (struct nsinfo*) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*,int) ; 

__attribute__((used)) static int FUNC6(char *filebuf, size_t bufsz,
			      struct nsinfo **nsip)
{
	struct nscookie nsc;
	struct nsinfo *nsi;
	struct nsinfo *nnsi;
	int rc = -1;

	nsi = *nsip;

	if (nsi->need_setns) {
		FUNC5(filebuf, bufsz, "/tmp/perf-%d.map", nsi->nstgid);
		FUNC2(nsi, &nsc);
		rc = FUNC0(filebuf, R_OK);
		FUNC3(&nsc);
		if (rc == 0)
			return rc;
	}

	nnsi = FUNC1(nsi);
	if (nnsi) {
		FUNC4(nsi);

		nnsi->need_setns = false;
		FUNC5(filebuf, bufsz, "/tmp/perf-%d.map", nnsi->tgid);
		*nsip = nnsi;
		rc = 0;
	}

	return rc;
}