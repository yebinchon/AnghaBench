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
struct io_uring_cqe {scalar_t__ res; } ;
struct io_uring {int dummy; } ;
struct TYPE_2__ {size_t iov_len; int /*<<< orphan*/  iov_base; } ;
struct io_data {scalar_t__ first_len; scalar_t__ read; int /*<<< orphan*/  offset; TYPE_1__ iov; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 scalar_t__ BS ; 
 scalar_t__ EAGAIN ; 
 unsigned long QD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct io_data*) ; 
 struct io_data* FUNC2 (struct io_uring_cqe*) ; 
 int /*<<< orphan*/  FUNC3 (struct io_uring*,struct io_uring_cqe*) ; 
 int FUNC4 (struct io_uring*,struct io_uring_cqe**) ; 
 int FUNC5 (struct io_uring*) ; 
 int FUNC6 (struct io_uring*,struct io_uring_cqe**) ; 
 int /*<<< orphan*/  FUNC7 (struct io_uring*,struct io_data*) ; 
 scalar_t__ FUNC8 (struct io_uring*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct io_uring*,struct io_data*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct io_uring *ring, off_t insize)
{
	unsigned long reads, writes;
	struct io_uring_cqe *cqe;
	off_t write_left, offset;
	int ret;

	write_left = insize;
	writes = reads = offset = 0;

	while (insize || write_left) {
		unsigned long had_reads;
		int got_comp;

		/*
		 * Queue up as many reads as we can
		 */
		had_reads = reads;
		while (insize) {
			off_t this_size = insize;

			if (reads + writes >= QD)
				break;
			if (this_size > BS)
				this_size = BS;
			else if (!this_size)
				break;

			if (FUNC8(ring, this_size, offset))
				break;

			insize -= this_size;
			offset += this_size;
			reads++;
		}

		if (had_reads != reads) {
			ret = FUNC5(ring);
			if (ret < 0) {
				FUNC0(stderr, "io_uring_submit: %s\n", FUNC10(-ret));
				break;
			}
		}

		/*
		 * Queue is full at this point. Find at least one completion.
		 */
		got_comp = 0;
		while (write_left) {
			struct io_data *data;

			if (!got_comp) {
				ret = FUNC6(ring, &cqe);
				got_comp = 1;
			} else
				ret = FUNC4(ring, &cqe);
			if (ret < 0) {
				FUNC0(stderr, "io_uring_peek_cqe: %s\n",
							FUNC10(-ret));
				return 1;
			}
			if (!cqe)
				break;

			data = FUNC2(cqe);
			if (cqe->res < 0) {
				if (cqe->res == -EAGAIN) {
					FUNC7(ring, data);
					FUNC3(ring, cqe);
					continue;
				}
				FUNC0(stderr, "cqe failed: %s\n",
						FUNC10(-cqe->res));
				return 1;
			} else if ((size_t) cqe->res != data->iov.iov_len) {
				/* Short read/write, adjust and requeue */
				data->iov.iov_base += cqe->res;
				data->iov.iov_len -= cqe->res;
				data->offset += cqe->res;
				FUNC7(ring, data);
				FUNC3(ring, cqe);
				continue;
			}

			/*
			 * All done. if write, nothing else to do. if read,
			 * queue up corresponding write.
			 */
			if (data->read) {
				FUNC9(ring, data);
				write_left -= data->first_len;
				reads--;
				writes++;
			} else {
				FUNC1(data);
				writes--;
			}
			FUNC3(ring, cqe);
		}
	}

	return 0;
}