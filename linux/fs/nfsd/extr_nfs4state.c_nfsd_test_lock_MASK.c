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
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd_file {int /*<<< orphan*/  nf_file; } ;
struct file_lock {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD_MAY_READ ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,struct nfsd_file**) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct file_lock*) ; 

__attribute__((used)) static __be32 FUNC4(struct svc_rqst *rqstp, struct svc_fh *fhp, struct file_lock *lock)
{
	struct nfsd_file *nf;
	__be32 err = FUNC0(rqstp, fhp, NFSD_MAY_READ, &nf);
	if (!err) {
		err = FUNC2(FUNC3(nf->nf_file, lock));
		FUNC1(nf);
	}
	return err;
}