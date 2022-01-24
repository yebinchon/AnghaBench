#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  thread_keyring; } ;

/* Variables and functions */
 TYPE_1__* id_resolver_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_id_resolver ; 
 int /*<<< orphan*/  key_type_id_resolver_legacy ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	FUNC0(id_resolver_cache->thread_keyring);
	FUNC2(&key_type_id_resolver);
	FUNC2(&key_type_id_resolver_legacy);
	FUNC1(id_resolver_cache);
}