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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SWEVENT_HLIST_BITS ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u64 FUNC1(u64 type, u32 event_id)
{
	u64 val = event_id | (type << 32);

	return FUNC0(val, SWEVENT_HLIST_BITS);
}