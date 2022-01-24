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
struct packet_fanout {int type; } ;

/* Variables and functions */
#define  PACKET_FANOUT_CBPF 129 
#define  PACKET_FANOUT_EBPF 128 
 int /*<<< orphan*/  FUNC0 (struct packet_fanout*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct packet_fanout *f)
{
	switch (f->type) {
	case PACKET_FANOUT_CBPF:
	case PACKET_FANOUT_EBPF:
		FUNC0(f, NULL);
	}
}