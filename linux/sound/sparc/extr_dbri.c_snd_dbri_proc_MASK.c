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
struct snd_dbri {int dummy; } ;
struct snd_card {struct snd_dbri* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  dbri_debug_read ; 
 int /*<<< orphan*/  dbri_regs_read ; 
 int /*<<< orphan*/  FUNC0 (struct snd_card*,char*,struct snd_dbri*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct snd_card *card)
{
	struct snd_dbri *dbri = card->private_data;

	FUNC0(card, "regs", dbri, dbri_regs_read);
#ifdef DBRI_DEBUG
	snd_card_ro_proc_new(card, "debug", dbri, dbri_debug_read);
#endif
}