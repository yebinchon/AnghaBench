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
struct squashfs_stream {int /*<<< orphan*/  wait; int /*<<< orphan*/  mutex; int /*<<< orphan*/  strm_list; } ;
struct decomp_stream {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct decomp_stream *decomp_strm,
				struct squashfs_stream *stream)
{
	FUNC1(&stream->mutex);
	FUNC0(&decomp_strm->list, &stream->strm_list);
	FUNC2(&stream->mutex);
	FUNC3(&stream->wait);
}