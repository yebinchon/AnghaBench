#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* type; } ;
struct nft_flowtable {TYPE_2__ data; struct nft_flowtable* name; struct nft_flowtable* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* free ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_flowtable*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct nft_flowtable *flowtable)
{
	FUNC0(flowtable->ops);
	FUNC0(flowtable->name);
	flowtable->data.type->free(&flowtable->data);
	FUNC1(flowtable->data.type->owner);
	FUNC0(flowtable);
}