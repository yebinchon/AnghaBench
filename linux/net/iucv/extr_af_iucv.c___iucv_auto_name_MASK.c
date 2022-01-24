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
struct iucv_sock {int /*<<< orphan*/  src_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  autobind_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ iucv_sk_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct iucv_sock *iucv)
{
	char name[12];

	FUNC3(name, "%08x", FUNC1(&iucv_sk_list.autobind_name));
	while (FUNC0(name)) {
		FUNC3(name, "%08x",
			FUNC1(&iucv_sk_list.autobind_name));
	}
	FUNC2(iucv->src_name, name, 8);
}