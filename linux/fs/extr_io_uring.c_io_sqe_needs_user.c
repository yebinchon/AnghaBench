
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct io_uring_sqe {int opcode; } ;


 scalar_t__ IORING_OP_READ_FIXED ;
 scalar_t__ IORING_OP_WRITE_FIXED ;
 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static inline bool io_sqe_needs_user(const struct io_uring_sqe *sqe)
{
 u8 opcode = READ_ONCE(sqe->opcode);

 return !(opcode == IORING_OP_READ_FIXED ||
   opcode == IORING_OP_WRITE_FIXED);
}
