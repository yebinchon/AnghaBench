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
struct ceph_connection {scalar_t__ in_data_crc; scalar_t__ in_middle_crc; scalar_t__ in_front_crc; scalar_t__ in_base_pos; int /*<<< orphan*/ * in_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ceph_connection*) ; 

__attribute__((used)) static int FUNC2(struct ceph_connection *con)
{
	FUNC1("prepare_read_message %p\n", con);
	FUNC0(con->in_msg != NULL);
	con->in_base_pos = 0;
	con->in_front_crc = con->in_middle_crc = con->in_data_crc = 0;
	return 0;
}