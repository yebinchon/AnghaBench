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

/* Variables and functions */
 int /*<<< orphan*/  XATTR_MAC_OSX_PREFIX ; 
 scalar_t__ XATTR_MAC_OSX_PREFIX_LEN ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC4(char *buffer, const char *xattr_name, int name_len)
{
	int len = name_len;
	int offset = 0;

	if (!FUNC0(xattr_name)) {
		FUNC1(buffer, XATTR_MAC_OSX_PREFIX, XATTR_MAC_OSX_PREFIX_LEN);
		offset += XATTR_MAC_OSX_PREFIX_LEN;
		len += XATTR_MAC_OSX_PREFIX_LEN;
	}

	FUNC3(buffer + offset, xattr_name, name_len);
	FUNC2(buffer + offset + name_len, 0, 1);
	len += 1;

	return len;
}