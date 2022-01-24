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
struct nft_synproxy {int /*<<< orphan*/  info; } ;
struct nft_object {int dummy; } ;

/* Variables and functions */
 struct nft_synproxy* FUNC0 (struct nft_object*) ; 

__attribute__((used)) static void FUNC1(struct nft_object *obj,
				    struct nft_object *newobj)
{
	struct nft_synproxy *newpriv = FUNC0(newobj);
	struct nft_synproxy *priv = FUNC0(obj);

	priv->info = newpriv->info;
}