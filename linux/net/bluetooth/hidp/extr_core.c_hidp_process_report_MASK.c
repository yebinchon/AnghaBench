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
struct hidp_session {int /*<<< orphan*/  input_buf; int /*<<< orphan*/  hid; } ;

/* Variables and functions */
 unsigned int HID_MAX_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct hidp_session *session, int type,
				const u8 *data, unsigned int len, int intr)
{
	if (len > HID_MAX_BUFFER_SIZE)
		len = HID_MAX_BUFFER_SIZE;

	FUNC1(session->input_buf, data, len);
	FUNC0(session->hid, type, session->input_buf, len, intr);
}