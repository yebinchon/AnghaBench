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
struct fw_unit {int dummy; } ;
typedef  enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;

/* Variables and functions */
 int FUNC0 (struct fw_unit*,int,unsigned int,int /*<<< orphan*/ *,unsigned int*,unsigned int) ; 

__attribute__((used)) static inline int
FUNC1(struct fw_unit *unit,
			   enum avc_general_plug_dir dir, unsigned int pid,
			   u8 *buf, unsigned int *len,
			   unsigned int eid)
{
	return FUNC0(unit, dir, pid, buf, len, eid);
}