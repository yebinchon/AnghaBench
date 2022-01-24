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
typedef  int /*<<< orphan*/  u64 ;
struct nft_quota {int /*<<< orphan*/  flags; int /*<<< orphan*/  quota; } ;
struct nft_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nft_quota* FUNC2 (struct nft_object*) ; 

__attribute__((used)) static void FUNC3(struct nft_object *obj,
				 struct nft_object *newobj)
{
	struct nft_quota *newpriv = FUNC2(newobj);
	struct nft_quota *priv = FUNC2(obj);
	u64 newquota;

	newquota = FUNC0(&newpriv->quota);
	FUNC1(&priv->quota, newquota);
	priv->flags = newpriv->flags;
}