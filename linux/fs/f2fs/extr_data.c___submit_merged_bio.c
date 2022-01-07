
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_io_info {int type; int op; int op_flags; } ;
struct f2fs_bio_info {int * bio; TYPE_1__* sbi; struct f2fs_io_info fio; } ;
struct TYPE_2__ {int sb; } ;


 int __submit_bio (TYPE_1__*,int *,int ) ;
 int bio_set_op_attrs (int *,int ,int ) ;
 scalar_t__ is_read_io (int ) ;
 int trace_f2fs_prepare_read_bio (int ,int ,int *) ;
 int trace_f2fs_prepare_write_bio (int ,int ,int *) ;

__attribute__((used)) static void __submit_merged_bio(struct f2fs_bio_info *io)
{
 struct f2fs_io_info *fio = &io->fio;

 if (!io->bio)
  return;

 bio_set_op_attrs(io->bio, fio->op, fio->op_flags);

 if (is_read_io(fio->op))
  trace_f2fs_prepare_read_bio(io->sbi->sb, fio->type, io->bio);
 else
  trace_f2fs_prepare_write_bio(io->sbi->sb, fio->type, io->bio);

 __submit_bio(io->sbi, io->bio, fio->type);
 io->bio = ((void*)0);
}
