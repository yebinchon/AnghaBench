#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_cpu_buf {int /*<<< orphan*/  fd; } ;
struct perf_buffer_params {scalar_t__ cpu_cnt; int* cpus; int* map_keys; int /*<<< orphan*/  attr; int /*<<< orphan*/  ctx; int /*<<< orphan*/  lost_cb; int /*<<< orphan*/  sample_cb; int /*<<< orphan*/  event_cb; } ;
struct perf_buffer {size_t page_size; size_t mmap_size; int map_fd; scalar_t__ epoll_fd; scalar_t__ cpu_cnt; TYPE_2__* events; struct perf_cpu_buf** cpu_bufs; int /*<<< orphan*/  ctx; int /*<<< orphan*/  lost_cb; int /*<<< orphan*/  sample_cb; int /*<<< orphan*/  event_cb; } ;
struct bpf_map_info {scalar_t__ type; int max_entries; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  map ;
typedef  int __u32 ;
struct TYPE_3__ {struct perf_cpu_buf* ptr; } ;
struct TYPE_4__ {TYPE_1__ data; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 scalar_t__ BPF_MAP_TYPE_PERF_EVENT_ARRAY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CLOEXEC ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 struct perf_buffer* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct perf_cpu_buf*) ; 
 int FUNC2 (struct perf_cpu_buf*) ; 
 int STRERR_BUFSIZE ; 
 int FUNC3 (int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,struct bpf_map_info*,int*) ; 
 void* FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int errno ; 
 size_t FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct perf_buffer*) ; 
 struct perf_cpu_buf* FUNC12 (struct perf_buffer*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static struct perf_buffer *FUNC14(int map_fd, size_t page_cnt,
					      struct perf_buffer_params *p)
{
	struct bpf_map_info map = {};
	char msg[STRERR_BUFSIZE];
	struct perf_buffer *pb;
	__u32 map_info_len;
	int err, i;

	if (page_cnt & (page_cnt - 1)) {
		FUNC13("page count should be power of two, but is %zu\n",
			   page_cnt);
		return FUNC0(-EINVAL);
	}

	map_info_len = sizeof(map);
	err = FUNC4(map_fd, &map, &map_info_len);
	if (err) {
		err = -errno;
		FUNC13("failed to get map info for map FD %d: %s\n",
			   map_fd, FUNC10(err, msg, sizeof(msg)));
		return FUNC0(err);
	}

	if (map.type != BPF_MAP_TYPE_PERF_EVENT_ARRAY) {
		FUNC13("map '%s' should be BPF_MAP_TYPE_PERF_EVENT_ARRAY\n",
			   map.name);
		return FUNC0(-EINVAL);
	}

	pb = FUNC5(1, sizeof(*pb));
	if (!pb)
		return FUNC0(-ENOMEM);

	pb->event_cb = p->event_cb;
	pb->sample_cb = p->sample_cb;
	pb->lost_cb = p->lost_cb;
	pb->ctx = p->ctx;

	pb->page_size = FUNC8();
	pb->mmap_size = pb->page_size * page_cnt;
	pb->map_fd = map_fd;

	pb->epoll_fd = FUNC6(EPOLL_CLOEXEC);
	if (pb->epoll_fd < 0) {
		err = -errno;
		FUNC13("failed to create epoll instance: %s\n",
			   FUNC10(err, msg, sizeof(msg)));
		goto error;
	}

	if (p->cpu_cnt > 0) {
		pb->cpu_cnt = p->cpu_cnt;
	} else {
		pb->cpu_cnt = FUNC9();
		if (pb->cpu_cnt < 0) {
			err = pb->cpu_cnt;
			goto error;
		}
		if (map.max_entries < pb->cpu_cnt)
			pb->cpu_cnt = map.max_entries;
	}

	pb->events = FUNC5(pb->cpu_cnt, sizeof(*pb->events));
	if (!pb->events) {
		err = -ENOMEM;
		FUNC13("failed to allocate events: out of memory\n");
		goto error;
	}
	pb->cpu_bufs = FUNC5(pb->cpu_cnt, sizeof(*pb->cpu_bufs));
	if (!pb->cpu_bufs) {
		err = -ENOMEM;
		FUNC13("failed to allocate buffers: out of memory\n");
		goto error;
	}

	for (i = 0; i < pb->cpu_cnt; i++) {
		struct perf_cpu_buf *cpu_buf;
		int cpu, map_key;

		cpu = p->cpu_cnt > 0 ? p->cpus[i] : i;
		map_key = p->cpu_cnt > 0 ? p->map_keys[i] : i;

		cpu_buf = FUNC12(pb, p->attr, cpu, map_key);
		if (FUNC1(cpu_buf)) {
			err = FUNC2(cpu_buf);
			goto error;
		}

		pb->cpu_bufs[i] = cpu_buf;

		err = FUNC3(pb->map_fd, &map_key,
					  &cpu_buf->fd, 0);
		if (err) {
			err = -errno;
			FUNC13("failed to set cpu #%d, key %d -> perf FD %d: %s\n",
				   cpu, map_key, cpu_buf->fd,
				   FUNC10(err, msg, sizeof(msg)));
			goto error;
		}

		pb->events[i].events = EPOLLIN;
		pb->events[i].data.ptr = cpu_buf;
		if (FUNC7(pb->epoll_fd, EPOLL_CTL_ADD, cpu_buf->fd,
			      &pb->events[i]) < 0) {
			err = -errno;
			FUNC13("failed to epoll_ctl cpu #%d perf FD %d: %s\n",
				   cpu, cpu_buf->fd,
				   FUNC10(err, msg, sizeof(msg)));
			goto error;
		}
	}

	return pb;

error:
	if (pb)
		FUNC11(pb);
	return FUNC0(err);
}