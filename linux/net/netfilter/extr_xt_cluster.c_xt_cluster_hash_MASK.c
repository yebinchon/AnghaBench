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
typedef  int /*<<< orphan*/  u_int32_t ;
struct xt_cluster_match_info {int /*<<< orphan*/  total_nodes; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct xt_cluster_match_info const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct xt_cluster_match_info const*) ; 

__attribute__((used)) static inline u_int32_t
FUNC7(const struct nf_conn *ct,
		const struct xt_cluster_match_info *info)
{
	u_int32_t hash = 0;

	switch(FUNC1(ct)) {
	case AF_INET:
		hash = FUNC5(FUNC2(ct), info);
		break;
	case AF_INET6:
		hash = FUNC6(FUNC3(ct), info);
		break;
	default:
		FUNC0(1);
		break;
	}

	return FUNC4(hash, info->total_nodes);
}