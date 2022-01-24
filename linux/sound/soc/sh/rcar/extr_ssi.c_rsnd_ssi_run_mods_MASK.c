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
 struct rsnd_mod* FUNC0 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC1 (struct rsnd_dai_stream*) ; 
 int FUNC2 (struct rsnd_mod*) ; 
 int FUNC3 (struct rsnd_dai_stream*) ; 

__attribute__((used)) static u32 FUNC4(struct rsnd_dai_stream *io)
{
	struct rsnd_mod *ssi_mod = FUNC0(io);
	struct rsnd_mod *ssi_parent_mod = FUNC1(io);
	u32 mods;

	mods = FUNC3(io) |
		1 << FUNC2(ssi_mod);

	if (ssi_parent_mod)
		mods |= 1 << FUNC2(ssi_parent_mod);

	return mods;
}