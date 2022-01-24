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
struct nfs4_file {int dummy; } ;
struct knfsd_fh {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct knfsd_fh*) ; 
 struct nfs4_file* FUNC1 (struct knfsd_fh*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct nfs4_file *
FUNC4(struct knfsd_fh *fh)
{
	struct nfs4_file *fp;
	unsigned int hashval = FUNC0(fh);

	FUNC2();
	fp = FUNC1(fh, hashval);
	FUNC3();
	return fp;
}