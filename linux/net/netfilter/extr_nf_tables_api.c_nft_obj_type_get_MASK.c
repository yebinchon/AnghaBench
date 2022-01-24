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
typedef  int /*<<< orphan*/  u32 ;
struct nft_object_type {int /*<<< orphan*/  owner; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOENT ; 
 struct nft_object_type const* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nft_object_type* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct net*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct nft_object_type *
FUNC5(struct net *net, u32 objtype)
{
	const struct nft_object_type *type;

	type = FUNC1(objtype);
	if (type != NULL && FUNC4(type->owner))
		return type;

	FUNC2();
#ifdef CONFIG_MODULES
	if (type == NULL) {
		nft_request_module(net, "nft-obj-%u", objtype);
		if (__nft_obj_type_get(objtype))
			return ERR_PTR(-EAGAIN);
	}
#endif
	return FUNC0(-ENOENT);
}