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
typedef  int __u32 ;

/* Variables and functions */
 int crush_hash_seed ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 

__attribute__((used)) static __u32 FUNC1(__u32 a, __u32 b, __u32 c)
{
	__u32 hash = crush_hash_seed ^ a ^ b ^ c;
	__u32 x = 231232;
	__u32 y = 1232;
	FUNC0(a, b, hash);
	FUNC0(c, x, hash);
	FUNC0(y, a, hash);
	FUNC0(b, x, hash);
	FUNC0(y, c, hash);
	return hash;
}