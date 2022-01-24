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
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct sockaddr*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sockaddr *sa, int ext_len,
			       xfrm_address_t *saddr, xfrm_address_t *daddr,
			       u16 *family)
{
	int af, socklen;

	if (ext_len < 2 || ext_len < FUNC2(sa->sa_family))
		return -EINVAL;

	af = FUNC0(sa, saddr);
	if (!af)
		return -EINVAL;

	socklen = FUNC1(af);
	if (FUNC0((struct sockaddr *) (((u8 *)sa) + socklen),
				   daddr) != af)
		return -EINVAL;

	*family = af;
	return 0;
}