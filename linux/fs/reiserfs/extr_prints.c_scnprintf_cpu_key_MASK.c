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
struct TYPE_2__ {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;
struct cpu_key {TYPE_1__ on_disk_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_key*) ; 
 int FUNC2 (char*,size_t,char*,...) ; 

__attribute__((used)) static int FUNC3(char *buf, size_t size, struct cpu_key *key)
{
	if (key)
		return FUNC2(buf, size, "[%d %d %s %s]",
				 key->on_disk_key.k_dir_id,
				 key->on_disk_key.k_objectid,
				 FUNC1(key), FUNC0(key));
	else
		return FUNC2(buf, size, "[NULL]");
}