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
struct mtk_btcvsd_snd {int /*<<< orphan*/  conn_bt_cvsd_mask; int /*<<< orphan*/  infra_misc_offset; int /*<<< orphan*/  infra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mtk_btcvsd_snd *bt)
{
	FUNC0(bt->infra, bt->infra_misc_offset,
			   bt->conn_bt_cvsd_mask, bt->conn_bt_cvsd_mask);
}