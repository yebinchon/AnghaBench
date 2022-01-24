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
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static bool FUNC3(unsigned char **packet_buff,
					    int *packet_buff_len,
					    int min_packet_len,
					    int additional_packet_len)
{
	unsigned char *new_buff;

	new_buff = FUNC1(min_packet_len + additional_packet_len, GFP_ATOMIC);

	/* keep old buffer if kmalloc should fail */
	if (!new_buff)
		return false;

	FUNC2(new_buff, *packet_buff, min_packet_len);
	FUNC0(*packet_buff);
	*packet_buff = new_buff;
	*packet_buff_len = min_packet_len + additional_packet_len;

	return true;
}