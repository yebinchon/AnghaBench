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
struct pstore_record {scalar_t__ type; int id; } ;
struct persistent_ram_zone {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ PSTORE_TYPE_DMESG ; 
 int /*<<< orphan*/  FUNC0 (struct persistent_ram_zone*) ; 
 int /*<<< orphan*/  FUNC1 (struct persistent_ram_zone*) ; 

__attribute__((used)) static struct persistent_ram_zone *
FUNC2(struct persistent_ram_zone *przs[], int id,
		     struct pstore_record *record)
{
	struct persistent_ram_zone *prz;

	/* Give up if we never existed or have hit the end. */
	if (!przs)
		return NULL;

	prz = przs[id];
	if (!prz)
		return NULL;

	/* Update old/shadowed buffer. */
	if (prz->type == PSTORE_TYPE_DMESG)
		FUNC1(prz);

	if (!FUNC0(prz))
		return NULL;

	record->type = prz->type;
	record->id = id;

	return prz;
}