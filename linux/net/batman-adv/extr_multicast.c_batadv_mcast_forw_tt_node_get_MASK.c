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
struct ethhdr {int /*<<< orphan*/  h_dest; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_NO_FLAGS ; 
 struct batadv_orig_node* FUNC0 (struct batadv_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct batadv_orig_node *
FUNC1(struct batadv_priv *bat_priv,
			      struct ethhdr *ethhdr)
{
	return FUNC0(bat_priv, NULL, ethhdr->h_dest,
					BATADV_NO_FLAGS);
}