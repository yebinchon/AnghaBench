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
typedef  int u32 ;
struct xfrm_pol_inexact_key {int type; int dir; int family; int /*<<< orphan*/  net; int /*<<< orphan*/  if_id; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC3(const void *data, u32 len, u32 seed)
{
	const struct xfrm_pol_inexact_key *k = data;
	u32 a = k->type << 24 | k->dir << 16 | k->family;

	return FUNC0(a, k->if_id, FUNC1(FUNC2(&k->net)),
			    seed);
}