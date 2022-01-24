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
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rsnd_dai_stream*) ; 
 struct rsnd_dai* FUNC1 (struct rsnd_dai_stream*) ; 
 int FUNC2 (struct rsnd_dai*) ; 
 int FUNC3 (struct rsnd_dai_stream*) ; 
 int FUNC4 (struct rsnd_dai_stream*) ; 

int FUNC5(struct rsnd_dai_stream *io)
{
	struct rsnd_dai *rdai = FUNC1(io);
	int lane = FUNC2(rdai);
	int chan = FUNC0(io) ?
		FUNC3(io) :
		FUNC4(io);

	return (chan > 2) && (lane > 1);
}