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
struct snd_soc_component {int dummy; } ;
struct nau8824 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nau8824*,int,unsigned int) ; 
 struct nau8824* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component,
	int clk_id, int source, unsigned int freq, int dir)
{
	struct nau8824 *nau8824 = FUNC1(component);

	return FUNC0(nau8824, clk_id, freq);
}