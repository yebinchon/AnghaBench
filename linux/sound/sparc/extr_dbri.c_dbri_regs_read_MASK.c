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
struct snd_info_entry {struct snd_dbri* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_dbri {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ REG0 ; 
 scalar_t__ REG2 ; 
 scalar_t__ REG8 ; 
 scalar_t__ REG9 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_info_entry *entry,
			   struct snd_info_buffer *buffer)
{
	struct snd_dbri *dbri = entry->private_data;

	FUNC1(buffer, "REG0: 0x%x\n", FUNC0(dbri->regs + REG0));
	FUNC1(buffer, "REG2: 0x%x\n", FUNC0(dbri->regs + REG2));
	FUNC1(buffer, "REG8: 0x%x\n", FUNC0(dbri->regs + REG8));
	FUNC1(buffer, "REG9: 0x%x\n", FUNC0(dbri->regs + REG9));
}