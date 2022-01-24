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
struct tun_security_struct {int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct tun_security_struct* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void **security)
{
	struct tun_security_struct *tunsec;

	tunsec = FUNC1(sizeof(*tunsec), GFP_KERNEL);
	if (!tunsec)
		return -ENOMEM;
	tunsec->sid = FUNC0();

	*security = tunsec;
	return 0;
}