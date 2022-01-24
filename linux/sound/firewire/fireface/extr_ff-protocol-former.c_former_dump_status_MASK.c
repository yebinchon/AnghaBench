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
struct snd_info_buffer {int dummy; } ;
struct snd_ff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ff*,struct snd_info_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ff*,struct snd_info_buffer*) ; 

__attribute__((used)) static void FUNC2(struct snd_ff *ff,
			       struct snd_info_buffer *buffer)
{
	FUNC0(ff, buffer);
	FUNC1(ff, buffer);
}