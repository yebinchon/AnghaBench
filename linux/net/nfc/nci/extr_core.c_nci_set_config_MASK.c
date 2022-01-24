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
struct nci_set_config_param {size_t len; int /*<<< orphan*/ * val; int /*<<< orphan*/  id; } ;
struct nci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_SET_CONFIG_TIMEOUT ; 
 int FUNC0 (struct nci_dev*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nci_set_config_req ; 

int FUNC2(struct nci_dev *ndev, __u8 id, size_t len, __u8 *val)
{
	struct nci_set_config_param param;

	if (!val || !len)
		return 0;

	param.id = id;
	param.len = len;
	param.val = val;

	return FUNC0(ndev, nci_set_config_req, (unsigned long)&param,
			     FUNC1(NCI_SET_CONFIG_TIMEOUT));
}