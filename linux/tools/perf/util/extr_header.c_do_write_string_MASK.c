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
typedef  scalar_t__ u32 ;
struct feat_fd {int dummy; } ;
typedef  int /*<<< orphan*/  len ;

/* Variables and functions */
 int /*<<< orphan*/  NAME_ALIGN ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct feat_fd*,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (struct feat_fd*,char const*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct feat_fd *ff, const char *str)
{
	u32 len, olen;
	int ret;

	olen = FUNC2(str) + 1;
	len = FUNC0(olen, NAME_ALIGN);

	/* write len, incl. \0 */
	ret = FUNC1(ff, &len, sizeof(len));
	if (ret < 0)
		return ret;

	return FUNC3(ff, str, olen, len);
}