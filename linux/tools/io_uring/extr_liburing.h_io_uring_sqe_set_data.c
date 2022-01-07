
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {unsigned long user_data; } ;



__attribute__((used)) static inline void io_uring_sqe_set_data(struct io_uring_sqe *sqe, void *data)
{
 sqe->user_data = (unsigned long) data;
}
