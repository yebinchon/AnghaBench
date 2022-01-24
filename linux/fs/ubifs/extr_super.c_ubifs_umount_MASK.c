#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  vol_id; int /*<<< orphan*/  ubi_num; } ;
struct ubifs_info {int /*<<< orphan*/  bottom_up_buf; int /*<<< orphan*/  sbuf; int /*<<< orphan*/  ileb_buf; TYPE_2__ bu; int /*<<< orphan*/  write_reserve_buf; int /*<<< orphan*/  mst_node; int /*<<< orphan*/  rcvrd_mst_node; int /*<<< orphan*/  cbuf; int /*<<< orphan*/  auth_hash_name; int /*<<< orphan*/  auth_key_name; scalar_t__ bgt; int /*<<< orphan*/  infos_list; TYPE_1__ vi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*) ; 
 int /*<<< orphan*/  ubifs_infos_lock ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct ubifs_info *c)
{
	FUNC1("un-mounting UBI device %d, volume %d", c->vi.ubi_num,
		c->vi.vol_id);

	FUNC0(c);
	FUNC8(&ubifs_infos_lock);
	FUNC7(&c->infos_list);
	FUNC9(&ubifs_infos_lock);

	if (c->bgt)
		FUNC6(c->bgt);

	FUNC2(c);
	FUNC4(c);
	FUNC3(c);
	FUNC12(c, 0);
	FUNC11(c);

	FUNC5(c->auth_key_name);
	FUNC5(c->auth_hash_name);
	FUNC5(c->cbuf);
	FUNC5(c->rcvrd_mst_node);
	FUNC5(c->mst_node);
	FUNC5(c->write_reserve_buf);
	FUNC5(c->bu.buf);
	FUNC13(c->ileb_buf);
	FUNC13(c->sbuf);
	FUNC5(c->bottom_up_buf);
	FUNC10(c);
}