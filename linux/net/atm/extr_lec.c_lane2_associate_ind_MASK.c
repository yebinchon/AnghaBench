#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct lec_priv {TYPE_1__* lane2_ops; } ;
struct lec_arp_table {int sizeoftlvs; int /*<<< orphan*/ * tlvs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* associate_indicator ) (struct net_device*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 struct lec_arp_table* FUNC2 (struct lec_priv*,int /*<<< orphan*/  const*) ; 
 struct lec_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, const u8 *mac_addr,
				const u8 *tlvs, u32 sizeoftlvs)
{
#if 0
	int i = 0;
#endif
	struct lec_priv *priv = FUNC3(dev);
#if 0				/*
				 * Why have the TLVs in LE_ARP entries
				 * since we do not use them? When you
				 * uncomment this code, make sure the
				 * TLVs get freed when entry is killed
				 */
	struct lec_arp_table *entry = lec_arp_find(priv, mac_addr);

	if (entry == NULL)
		return;		/* should not happen */

	kfree(entry->tlvs);

	entry->tlvs = kmemdup(tlvs, sizeoftlvs, GFP_KERNEL);
	if (entry->tlvs == NULL)
		return;
	entry->sizeoftlvs = sizeoftlvs;
#endif
#if 0
	pr_info("\n");
	pr_info("dump of tlvs, sizeoftlvs=%d\n", sizeoftlvs);
	while (i < sizeoftlvs)
		pr_cont("%02x ", tlvs[i++]);

	pr_cont("\n");
#endif

	/* tell MPOA about the TLVs we saw */
	if (priv->lane2_ops && priv->lane2_ops->associate_indicator) {
		priv->lane2_ops->associate_indicator(dev, mac_addr,
						     tlvs, sizeoftlvs);
	}
}