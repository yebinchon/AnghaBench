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
struct nfsd_net {int /*<<< orphan*/  nfsd4_minorversions; scalar_t__ nfsd_versions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd_net*) ; 

__attribute__((used)) static void
FUNC3(struct nfsd_net *nn)
{
	if (!nn->nfsd_versions) {
		nn->nfsd_versions = FUNC1();
		nn->nfsd4_minorversions = FUNC0();
		if (!nn->nfsd_versions || !nn->nfsd4_minorversions)
			FUNC2(nn);
	}
}