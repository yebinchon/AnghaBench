
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int opcode; } ;




 int READ_ONCE (int ) ;

__attribute__((used)) static bool io_op_needs_file(const struct io_uring_sqe *sqe)
{
 int op = READ_ONCE(sqe->opcode);

 switch (op) {
 case 129:
 case 128:
  return 0;
 default:
  return 1;
 }
}
