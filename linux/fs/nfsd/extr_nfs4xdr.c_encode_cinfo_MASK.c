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
struct nfsd4_change_info {int /*<<< orphan*/  after_ctime_nsec; int /*<<< orphan*/  after_ctime_sec; int /*<<< orphan*/  before_ctime_nsec; int /*<<< orphan*/  before_ctime_sec; int /*<<< orphan*/  after_change; int /*<<< orphan*/  before_change; scalar_t__ change_supported; int /*<<< orphan*/  atomic; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *FUNC2(__be32 *p, struct nfsd4_change_info *c)
{
	*p++ = FUNC0(c->atomic);
	if (c->change_supported) {
		p = FUNC1(p, c->before_change);
		p = FUNC1(p, c->after_change);
	} else {
		*p++ = FUNC0(c->before_ctime_sec);
		*p++ = FUNC0(c->before_ctime_nsec);
		*p++ = FUNC0(c->after_ctime_sec);
		*p++ = FUNC0(c->after_ctime_nsec);
	}
	return p;
}