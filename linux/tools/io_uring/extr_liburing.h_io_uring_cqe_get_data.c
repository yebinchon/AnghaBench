
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_cqe {scalar_t__ user_data; } ;



__attribute__((used)) static inline void *io_uring_cqe_get_data(struct io_uring_cqe *cqe)
{
 return (void *) (uintptr_t) cqe->user_data;
}
