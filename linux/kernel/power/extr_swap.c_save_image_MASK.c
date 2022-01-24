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
struct swap_map_handle {int dummy; } ;
struct snapshot_handle {int dummy; } ;
struct hib_bio_batch {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snapshot_handle) ; 
 int /*<<< orphan*/  FUNC1 (struct hib_bio_batch*) ; 
 int FUNC2 (struct hib_bio_batch*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (struct snapshot_handle*) ; 
 int FUNC6 (struct swap_map_handle*,int /*<<< orphan*/ ,struct hib_bio_batch*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,char*) ; 

__attribute__((used)) static int FUNC8(struct swap_map_handle *handle,
                      struct snapshot_handle *snapshot,
                      unsigned int nr_to_write)
{
	unsigned int m;
	int ret;
	int nr_pages;
	int err2;
	struct hib_bio_batch hb;
	ktime_t start;
	ktime_t stop;

	FUNC1(&hb);

	FUNC4("Saving image data pages (%u pages)...\n",
		nr_to_write);
	m = nr_to_write / 10;
	if (!m)
		m = 1;
	nr_pages = 0;
	start = FUNC3();
	while (1) {
		ret = FUNC5(snapshot);
		if (ret <= 0)
			break;
		ret = FUNC6(handle, FUNC0(*snapshot), &hb);
		if (ret)
			break;
		if (!(nr_pages % m))
			FUNC4("Image saving progress: %3d%%\n",
				nr_pages / m * 10);
		nr_pages++;
	}
	err2 = FUNC2(&hb);
	stop = FUNC3();
	if (!ret)
		ret = err2;
	if (!ret)
		FUNC4("Image saving done\n");
	FUNC7(start, stop, nr_to_write, "Wrote");
	return ret;
}