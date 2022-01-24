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
struct TYPE_2__ {void* k_objectid; void* k_dir_id; } ;
struct cpu_key {int version; int key_length; TYPE_1__ on_disk_key; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  void* __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpu_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_key*,int) ; 

__attribute__((used)) static void FUNC2(struct cpu_key *key, int version, __u32 dirid,
			  __u32 objectid, loff_t offset, int type, int length)
{
	key->version = version;

	key->on_disk_key.k_dir_id = dirid;
	key->on_disk_key.k_objectid = objectid;
	FUNC0(key, offset);
	FUNC1(key, type);
	key->key_length = length;
}