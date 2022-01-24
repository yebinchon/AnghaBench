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

/* Variables and functions */
 int /*<<< orphan*/  RSND_STREAM_TDM_SPLIT ; 
 int /*<<< orphan*/  FUNC0 (struct rsnd_dai_stream*,int /*<<< orphan*/ ) ; 

int FUNC1(struct rsnd_dai_stream *io)
{
	return !!FUNC0(io, RSND_STREAM_TDM_SPLIT);
}