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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC2(__u8 *buf, u8 *gid_raw)
{
	FUNC1(buf, "%04x:%04x:%04x:%04x:%04x:%04x:%04x:%04x",
		FUNC0(((__be16 *)gid_raw)[0]),
		FUNC0(((__be16 *)gid_raw)[1]),
		FUNC0(((__be16 *)gid_raw)[2]),
		FUNC0(((__be16 *)gid_raw)[3]),
		FUNC0(((__be16 *)gid_raw)[4]),
		FUNC0(((__be16 *)gid_raw)[5]),
		FUNC0(((__be16 *)gid_raw)[6]),
		FUNC0(((__be16 *)gid_raw)[7]));
}