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
struct packet_description {int /*<<< orphan*/  ports; int /*<<< orphan*/  src; int /*<<< orphan*/  srcv6; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CH_RINGS_SIZE ; 
 int /*<<< orphan*/  MAX_VIPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __u32 FUNC2(struct packet_description *pckt,
			     bool ipv6)
{
	if (ipv6)
		return FUNC1(FUNC0(pckt->srcv6, 16, MAX_VIPS),
				    pckt->ports, CH_RINGS_SIZE);
	else
		return FUNC1(pckt->src, pckt->ports, CH_RINGS_SIZE);
}