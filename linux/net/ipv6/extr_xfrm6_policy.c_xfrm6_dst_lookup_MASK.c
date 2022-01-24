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
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u32 ;
struct net {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowi6_flags; int /*<<< orphan*/  flowi6_oif; } ;
struct dst_entry {int error; } ;
typedef  int /*<<< orphan*/  fl6 ;

/* Variables and functions */
 struct dst_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  FLOWI_FLAG_SKIP_NH_OIF ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct dst_entry* FUNC2 (struct net*,int /*<<< orphan*/ *,struct flowi6*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct flowi6*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct dst_entry *FUNC6(struct net *net, int tos, int oif,
					  const xfrm_address_t *saddr,
					  const xfrm_address_t *daddr,
					  u32 mark)
{
	struct flowi6 fl6;
	struct dst_entry *dst;
	int err;

	FUNC5(&fl6, 0, sizeof(fl6));
	fl6.flowi6_oif = FUNC3(net, oif);
	fl6.flowi6_flags = FLOWI_FLAG_SKIP_NH_OIF;
	fl6.flowi6_mark = mark;
	FUNC4(&fl6.daddr, daddr, sizeof(fl6.daddr));
	if (saddr)
		FUNC4(&fl6.saddr, saddr, sizeof(fl6.saddr));

	dst = FUNC2(net, NULL, &fl6);

	err = dst->error;
	if (dst->error) {
		FUNC1(dst);
		dst = FUNC0(err);
	}

	return dst;
}