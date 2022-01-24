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
struct sk_buff {int len; } ;
struct nci_dev {int dummy; } ;
struct nci_data_hdr {int plen; scalar_t__ rfu; int /*<<< orphan*/  conn_id; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_DATA_HDR_SIZE ; 
 int /*<<< orphan*/  NCI_MT_DATA_PKT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nci_data_hdr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct nci_dev *ndev,
				     __u8 conn_id,
				     struct sk_buff *skb,
				     __u8 pbf)
{
	struct nci_data_hdr *hdr;
	int plen = skb->len;

	hdr = FUNC2(skb, NCI_DATA_HDR_SIZE);
	hdr->conn_id = conn_id;
	hdr->rfu = 0;
	hdr->plen = plen;

	FUNC0((__u8 *)hdr, NCI_MT_DATA_PKT);
	FUNC1((__u8 *)hdr, pbf);
}