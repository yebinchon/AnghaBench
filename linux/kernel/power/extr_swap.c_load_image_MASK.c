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
struct snapshot_handle {scalar_t__ sync_read; } ;
struct hib_bio_batch {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int ENODATA ; 
 int clean_pages_on_read ; 
 int /*<<< orphan*/  FUNC0 (struct snapshot_handle) ; 
 int /*<<< orphan*/  FUNC1 (struct hib_bio_batch*) ; 
 int FUNC2 (struct hib_bio_batch*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct snapshot_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct snapshot_handle*) ; 
 int FUNC7 (struct snapshot_handle*) ; 
 int FUNC8 (struct swap_map_handle*,int /*<<< orphan*/ ,struct hib_bio_batch*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,char*) ; 

__attribute__((used)) static int FUNC10(struct swap_map_handle *handle,
                      struct snapshot_handle *snapshot,
                      unsigned int nr_to_read)
{
	unsigned int m;
	int ret = 0;
	ktime_t start;
	ktime_t stop;
	struct hib_bio_batch hb;
	int err2;
	unsigned nr_pages;

	FUNC1(&hb);

	clean_pages_on_read = true;
	FUNC4("Loading image data pages (%u pages)...\n", nr_to_read);
	m = nr_to_read / 10;
	if (!m)
		m = 1;
	nr_pages = 0;
	start = FUNC3();
	for ( ; ; ) {
		ret = FUNC7(snapshot);
		if (ret <= 0)
			break;
		ret = FUNC8(handle, FUNC0(*snapshot), &hb);
		if (ret)
			break;
		if (snapshot->sync_read)
			ret = FUNC2(&hb);
		if (ret)
			break;
		if (!(nr_pages % m))
			FUNC4("Image loading progress: %3d%%\n",
				nr_pages / m * 10);
		nr_pages++;
	}
	err2 = FUNC2(&hb);
	stop = FUNC3();
	if (!ret)
		ret = err2;
	if (!ret) {
		FUNC4("Image loading done\n");
		FUNC6(snapshot);
		if (!FUNC5(snapshot))
			ret = -ENODATA;
	}
	FUNC9(start, stop, nr_to_read, "Read");
	return ret;
}