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
struct svc_cacherep {int dummy; } ;
struct nfsd_net {int dummy; } ;
struct nfsd_drc_bucket {int /*<<< orphan*/  cache_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsd_drc_bucket*,struct svc_cacherep*,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct nfsd_drc_bucket *b, struct svc_cacherep *rp,
			struct nfsd_net *nn)
{
	FUNC1(&b->cache_lock);
	FUNC0(b, rp, nn);
	FUNC2(&b->cache_lock);
}