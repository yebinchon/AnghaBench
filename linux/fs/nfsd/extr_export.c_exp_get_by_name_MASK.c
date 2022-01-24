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
struct path {int dummy; } ;
struct svc_export {int /*<<< orphan*/  h; struct cache_detail* cd; struct path ex_path; struct auth_domain* ex_client; } ;
struct cache_req {int dummy; } ;
struct cache_detail {int dummy; } ;
struct auth_domain {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct svc_export* FUNC0 (int) ; 
 int FUNC1 (struct cache_detail*,int /*<<< orphan*/ *,struct cache_req*) ; 
 struct svc_export* FUNC2 (struct svc_export*) ; 

__attribute__((used)) static struct svc_export *
FUNC3(struct cache_detail *cd, struct auth_domain *clp,
		const struct path *path, struct cache_req *reqp)
{
	struct svc_export *exp, key;
	int err;

	if (!clp)
		return FUNC0(-ENOENT);

	key.ex_client = clp;
	key.ex_path = *path;
	key.cd = cd;

	exp = FUNC2(&key);
	if (exp == NULL)
		return FUNC0(-ENOMEM);
	err = FUNC1(cd, &exp->h, reqp);
	if (err)
		return FUNC0(err);
	return exp;
}