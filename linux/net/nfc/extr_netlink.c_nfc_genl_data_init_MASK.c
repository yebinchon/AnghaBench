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
struct nfc_genl_data {int /*<<< orphan*/  genl_data_mutex; scalar_t__ poll_req_portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct nfc_genl_data *genl_data)
{
	genl_data->poll_req_portid = 0;
	FUNC0(&genl_data->genl_data_mutex);
}