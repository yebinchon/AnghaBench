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
struct nfsd_file {int dummy; } ;
struct nfs4_file {int /*<<< orphan*/  fi_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 struct nfsd_file* FUNC0 (struct nfs4_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfsd_file *
FUNC2(struct nfs4_file *f)
{
	struct nfsd_file *ret;

	FUNC1(&f->fi_lock);

	ret = FUNC0(f, O_RDONLY);
	if (!ret)
		ret = FUNC0(f, O_RDWR);
	return ret;
}