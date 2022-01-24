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

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int SST_BYT_IPCX_BUSY ; 

__attribute__((used)) static inline u64 FUNC4(int msg_id, int data, bool large, int str_id)
{
	return FUNC2(msg_id) | FUNC3(str_id) |
	       FUNC1(large) | FUNC0(data) |
	       SST_BYT_IPCX_BUSY;
}