#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* ring_entries; } ;
struct TYPE_5__ {int* ring_entries; } ;
struct submitter {int nr_files; int /*<<< orphan*/  ring_fd; int /*<<< orphan*/  thread; int /*<<< orphan*/  inflight; scalar_t__ reaps; scalar_t__ calls; scalar_t__ done; TYPE_3__ cq_ring; TYPE_2__ sq_ring; TYPE_1__* iovecs; struct file* files; } ;
struct rlimit {void* rlim_max; void* rlim_cur; } ;
struct file {int real_fd; int max_blocks; } ;
struct TYPE_4__ {int /*<<< orphan*/  iov_len; void* iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  BS ; 
 int DEPTH ; 
 int MAX_FDS ; 
 int O_DIRECT ; 
 int O_NOATIME ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 void* RLIM_INFINITY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int buffered ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_nop ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  finish ; 
 int fixedbufs ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct file*) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int polled ; 
 scalar_t__ FUNC8 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct submitter*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int FUNC13 (struct submitter*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  submitter_fn ; 
 struct submitter* submitters ; 

int FUNC16(int argc, char *argv[])
{
	struct submitter *s = &submitters[0];
	unsigned long done, calls, reap;
	int err, i, flags, fd;
	char *fdepths;
	void *ret;

	if (!do_nop && argc < 2) {
		FUNC9("%s: filename\n", argv[0]);
		return 1;
	}

	flags = O_RDONLY | O_NOATIME;
	if (!buffered)
		flags |= O_DIRECT;

	i = 1;
	while (!do_nop && i < argc) {
		struct file *f;

		if (s->nr_files == MAX_FDS) {
			FUNC9("Max number of files (%d) reached\n", MAX_FDS);
			break;
		}
		fd = FUNC6(argv[i], flags);
		if (fd < 0) {
			FUNC7("open");
			return 1;
		}

		f = &s->files[s->nr_files];
		f->real_fd = fd;
		if (FUNC4(f)) {
			FUNC9("failed getting size of device/file\n");
			return 1;
		}
		if (f->max_blocks <= 1) {
			FUNC9("Zero file/device size?\n");
			return 1;
		}
		f->max_blocks--;

		FUNC9("Added file %s\n", argv[i]);
		s->nr_files++;
		i++;
	}

	if (fixedbufs) {
		struct rlimit rlim;

		rlim.rlim_cur = RLIM_INFINITY;
		rlim.rlim_max = RLIM_INFINITY;
		if (FUNC12(RLIMIT_MEMLOCK, &rlim) < 0) {
			FUNC7("setrlimit");
			return 1;
		}
	}

	FUNC0();

	for (i = 0; i < DEPTH; i++) {
		void *buf;

		if (FUNC8(&buf, BS, BS)) {
			FUNC9("failed alloc\n");
			return 1;
		}
		s->iovecs[i].iov_base = buf;
		s->iovecs[i].iov_len = BS;
	}

	err = FUNC13(s);
	if (err) {
		FUNC9("ring setup failed: %s, %d\n", FUNC15(errno), err);
		return 1;
	}
	FUNC9("polled=%d, fixedbufs=%d, buffered=%d", polled, fixedbufs, buffered);
	FUNC9(" QD=%d, sq_ring=%d, cq_ring=%d\n", DEPTH, *s->sq_ring.ring_entries, *s->cq_ring.ring_entries);

	FUNC10(&s->thread, NULL, submitter_fn, s);

	fdepths = FUNC5(8 * s->nr_files);
	reap = calls = done = 0;
	do {
		unsigned long this_done = 0;
		unsigned long this_reap = 0;
		unsigned long this_call = 0;
		unsigned long rpc = 0, ipc = 0;

		FUNC14(1);
		this_done += s->done;
		this_call += s->calls;
		this_reap += s->reaps;
		if (this_call - calls) {
			rpc = (this_done - done) / (this_call - calls);
			ipc = (this_reap - reap) / (this_call - calls);
		} else
			rpc = ipc = -1;
		FUNC2(fdepths);
		FUNC9("IOPS=%lu, IOS/call=%ld/%ld, inflight=%u (%s)\n",
				this_done - done, rpc, ipc, s->inflight,
				fdepths);
		done = this_done;
		calls = this_call;
		reap = this_reap;
	} while (!finish);

	FUNC11(s->thread, &ret);
	FUNC1(s->ring_fd);
	FUNC3(fdepths);
	return 0;
}