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
struct nsproxy {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct nsproxy* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nsproxy_cachep ; 

__attribute__((used)) static inline struct nsproxy *FUNC2(void)
{
	struct nsproxy *nsproxy;

	nsproxy = FUNC1(nsproxy_cachep, GFP_KERNEL);
	if (nsproxy)
		FUNC0(&nsproxy->count, 1);
	return nsproxy;
}