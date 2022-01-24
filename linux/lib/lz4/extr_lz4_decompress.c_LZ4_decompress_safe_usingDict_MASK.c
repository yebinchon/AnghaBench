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
 int KB ; 
 int FUNC0 (char const*,char*,int,int) ; 
 int FUNC1 (char const*,char*,int,int,char const*,int) ; 
 int FUNC2 (char const*,char*,int,int) ; 
 int FUNC3 (char const*,char*,int,int,int) ; 

int FUNC4(const char *source, char *dest,
				  int compressedSize, int maxOutputSize,
				  const char *dictStart, int dictSize)
{
	if (dictSize == 0)
		return FUNC0(source, dest,
					   compressedSize, maxOutputSize);
	if (dictStart+dictSize == dest) {
		if (dictSize >= 64 * KB - 1)
			return FUNC2(source, dest,
				compressedSize, maxOutputSize);
		return FUNC3(source, dest,
			compressedSize, maxOutputSize, dictSize);
	}
	return FUNC1(source, dest,
		compressedSize, maxOutputSize, dictStart, dictSize);
}