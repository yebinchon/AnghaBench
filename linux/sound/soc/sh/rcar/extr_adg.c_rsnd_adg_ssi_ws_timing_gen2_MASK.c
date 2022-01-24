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
 int FUNC1 (struct rsnd_mod*) ; 
 scalar_t__ FUNC2 (struct rsnd_dai_stream*) ; 

__attribute__((used)) static u32 FUNC3(struct rsnd_dai_stream *io)
{
	struct rsnd_mod *ssi_mod = FUNC0(io);
	int id = FUNC1(ssi_mod);
	int ws = id;

	if (FUNC2(io)) {
		switch (id) {
		case 1:
		case 2:
		case 9:
			ws = 0;
			break;
		case 4:
			ws = 3;
			break;
		case 8:
			ws = 7;
			break;
		}
	}

	return (0x6 + ws) << 8;
}