#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct nft_object* name; } ;
struct nft_object {TYPE_3__ key; TYPE_2__* ops; } ;
struct nft_ctx {int dummy; } ;
struct TYPE_5__ {TYPE_1__* type; int /*<<< orphan*/  (* destroy ) (struct nft_ctx const*,struct nft_object*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_ctx const*,struct nft_object*) ; 

__attribute__((used)) static void FUNC3(const struct nft_ctx *ctx, struct nft_object *obj)
{
	if (obj->ops->destroy)
		obj->ops->destroy(ctx, obj);

	FUNC1(obj->ops->type->owner);
	FUNC0(obj->key.name);
	FUNC0(obj);
}