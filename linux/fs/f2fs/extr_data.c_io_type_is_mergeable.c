
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_io_info {scalar_t__ op; scalar_t__ op_flags; } ;
struct TYPE_2__ {scalar_t__ op; scalar_t__ op_flags; } ;
struct f2fs_bio_info {TYPE_1__ fio; } ;



__attribute__((used)) static bool io_type_is_mergeable(struct f2fs_bio_info *io,
      struct f2fs_io_info *fio)
{
 if (io->fio.op != fio->op)
  return 0;
 return io->fio.op_flags == fio->op_flags;
}
