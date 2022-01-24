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
struct ima_template_entry {int /*<<< orphan*/  digest; } ;
struct ima_queue_entry {int /*<<< orphan*/  hnext; int /*<<< orphan*/  later; struct ima_template_entry* entry; } ;
struct TYPE_2__ {int /*<<< orphan*/ * queue; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ULONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int binary_runtime_size ; 
 int FUNC2 (struct ima_template_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ima_htable ; 
 int /*<<< orphan*/  ima_measurements ; 
 struct ima_queue_entry* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct ima_template_entry *entry,
				bool update_htable)
{
	struct ima_queue_entry *qe;
	unsigned int key;

	qe = FUNC5(sizeof(*qe), GFP_KERNEL);
	if (qe == NULL) {
		FUNC7("OUT OF MEMORY ERROR creating queue entry\n");
		return -ENOMEM;
	}
	qe->entry = entry;

	FUNC0(&qe->later);
	FUNC6(&qe->later, &ima_measurements);

	FUNC1(&ima_htable.len);
	if (update_htable) {
		key = FUNC4(entry->digest);
		FUNC3(&qe->hnext, &ima_htable.queue[key]);
	}

	if (binary_runtime_size != ULONG_MAX) {
		int size;

		size = FUNC2(entry);
		binary_runtime_size = (binary_runtime_size < ULONG_MAX - size) ?
		     binary_runtime_size + size : ULONG_MAX;
	}
	return 0;
}