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
typedef  int u32 ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rsnd_dai_stream*,struct rsnd_mod*) ; 

__attribute__((used)) static u32 FUNC1(struct rsnd_dai_stream *io,
			       struct rsnd_mod *mod_from,
			       struct rsnd_mod *mod_to)
{
	return	(FUNC0(io, mod_from) << 24) +
		(FUNC0(io, mod_to) << 16);
}