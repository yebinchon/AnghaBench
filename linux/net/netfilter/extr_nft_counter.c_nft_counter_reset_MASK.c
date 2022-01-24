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
struct nft_counter_percpu_priv {int /*<<< orphan*/  counter; } ;
struct nft_counter {scalar_t__ bytes; scalar_t__ packets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct nft_counter* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nft_counter_percpu_priv *priv,
			      struct nft_counter *total)
{
	struct nft_counter *this_cpu;

	FUNC0();
	this_cpu = FUNC2(priv->counter);
	this_cpu->packets -= total->packets;
	this_cpu->bytes -= total->bytes;
	FUNC1();
}