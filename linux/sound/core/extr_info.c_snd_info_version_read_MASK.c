#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_info_entry {int dummy; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  release; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
	FUNC1(buffer,
		    "Advanced Linux Sound Architecture Driver Version k%s.\n",
		    FUNC0()->release);
}