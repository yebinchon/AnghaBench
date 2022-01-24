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
struct nci_dev {int dummy; } ;
struct nci_cmd_param {int /*<<< orphan*/  payload; int /*<<< orphan*/  len; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct nci_dev *ndev, unsigned long opt)
{
	struct nci_cmd_param *param =
		(struct nci_cmd_param *)opt;

	FUNC0(ndev, param->opcode, param->len, param->payload);
}