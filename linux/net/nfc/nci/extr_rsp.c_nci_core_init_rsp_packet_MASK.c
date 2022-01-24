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
struct sk_buff {scalar_t__ data; } ;
struct nci_dev {scalar_t__ nfcc_features; scalar_t__ num_supported_rf_interfaces; scalar_t__* supported_rf_interfaces; scalar_t__ max_logical_connections; scalar_t__ max_routing_table_size; scalar_t__ max_ctrl_pkt_payload_len; scalar_t__ max_size_for_large_params; scalar_t__ manufact_id; scalar_t__ manufact_specific_info; } ;
struct nci_core_init_rsp_2 {scalar_t__ max_logical_connections; scalar_t__ max_ctrl_pkt_payload_len; scalar_t__ manufact_id; int /*<<< orphan*/  manufact_specific_info; int /*<<< orphan*/  max_size_for_large_params; int /*<<< orphan*/  max_routing_table_size; } ;
struct nci_core_init_rsp_1 {scalar_t__ status; scalar_t__ num_supported_rf_interfaces; int /*<<< orphan*/  supported_rf_interfaces; int /*<<< orphan*/  nfcc_features; } ;

/* Variables and functions */
 scalar_t__ NCI_MAX_SUPPORTED_RF_INTERFACES ; 
 scalar_t__ NCI_STATUS_OK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct nci_dev *ndev, struct sk_buff *skb)
{
	struct nci_core_init_rsp_1 *rsp_1 = (void *) skb->data;
	struct nci_core_init_rsp_2 *rsp_2;

	FUNC4("status 0x%x\n", rsp_1->status);

	if (rsp_1->status != NCI_STATUS_OK)
		goto exit;

	ndev->nfcc_features = FUNC1(rsp_1->nfcc_features);
	ndev->num_supported_rf_interfaces = rsp_1->num_supported_rf_interfaces;

	if (ndev->num_supported_rf_interfaces >
	    NCI_MAX_SUPPORTED_RF_INTERFACES) {
		ndev->num_supported_rf_interfaces =
			NCI_MAX_SUPPORTED_RF_INTERFACES;
	}

	FUNC2(ndev->supported_rf_interfaces,
	       rsp_1->supported_rf_interfaces,
	       ndev->num_supported_rf_interfaces);

	rsp_2 = (void *) (skb->data + 6 + rsp_1->num_supported_rf_interfaces);

	ndev->max_logical_connections = rsp_2->max_logical_connections;
	ndev->max_routing_table_size =
		FUNC0(rsp_2->max_routing_table_size);
	ndev->max_ctrl_pkt_payload_len =
		rsp_2->max_ctrl_pkt_payload_len;
	ndev->max_size_for_large_params =
		FUNC0(rsp_2->max_size_for_large_params);
	ndev->manufact_id =
		rsp_2->manufact_id;
	ndev->manufact_specific_info =
		FUNC1(rsp_2->manufact_specific_info);

	FUNC4("nfcc_features 0x%x\n",
		 ndev->nfcc_features);
	FUNC4("num_supported_rf_interfaces %d\n",
		 ndev->num_supported_rf_interfaces);
	FUNC4("supported_rf_interfaces[0] 0x%x\n",
		 ndev->supported_rf_interfaces[0]);
	FUNC4("supported_rf_interfaces[1] 0x%x\n",
		 ndev->supported_rf_interfaces[1]);
	FUNC4("supported_rf_interfaces[2] 0x%x\n",
		 ndev->supported_rf_interfaces[2]);
	FUNC4("supported_rf_interfaces[3] 0x%x\n",
		 ndev->supported_rf_interfaces[3]);
	FUNC4("max_logical_connections %d\n",
		 ndev->max_logical_connections);
	FUNC4("max_routing_table_size %d\n",
		 ndev->max_routing_table_size);
	FUNC4("max_ctrl_pkt_payload_len %d\n",
		 ndev->max_ctrl_pkt_payload_len);
	FUNC4("max_size_for_large_params %d\n",
		 ndev->max_size_for_large_params);
	FUNC4("manufact_id 0x%x\n",
		 ndev->manufact_id);
	FUNC4("manufact_specific_info 0x%x\n",
		 ndev->manufact_specific_info);

exit:
	FUNC3(ndev, rsp_1->status);
}