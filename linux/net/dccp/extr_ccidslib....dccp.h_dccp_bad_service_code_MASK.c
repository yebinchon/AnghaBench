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
struct sock {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_service_list; int /*<<< orphan*/  const dccps_service; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 struct dccp_sock* FUNC1 (struct sock const*) ; 

__attribute__((used)) static inline bool FUNC2(const struct sock *sk,
					const __be32 service)
{
	const struct dccp_sock *dp = FUNC1(sk);

	if (dp->dccps_service == service)
		return false;
	return !FUNC0(dp->dccps_service_list, service);
}