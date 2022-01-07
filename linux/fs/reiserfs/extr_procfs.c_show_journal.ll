; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_sb_info = type { %struct.TYPE_5__*, %struct.reiserfs_super_block* }
%struct.TYPE_5__ = type { i32 }
%struct.reiserfs_super_block = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.journal_params }
%struct.journal_params = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [906 x i8] c"jp_journal_1st_block: \09%i\0Ajp_journal_dev: \09%pg[%x]\0Ajp_journal_size: \09%i\0Ajp_journal_trans_max: \09%i\0Ajp_journal_magic: \09%i\0Ajp_journal_max_batch: \09%i\0Ajp_journal_max_commit_age: \09%i\0Ajp_journal_max_trans_age: \09%i\0Aj_1st_reserved_block: \09%i\0Aj_state: \09%li\0Aj_trans_id: \09%u\0Aj_mount_id: \09%lu\0Aj_start: \09%lu\0Aj_len: \09%lu\0Aj_len_alloc: \09%lu\0Aj_wcount: \09%i\0Aj_bcount: \09%lu\0Aj_first_unflushed_offset: \09%lu\0Aj_last_flush_trans_id: \09%u\0Aj_trans_start_time: \09%lli\0Aj_list_bitmap_index: \09%i\0Aj_must_wait: \09%i\0Aj_next_full_flush: \09%i\0Aj_next_async_flush: \09%i\0Aj_cnode_used: \09%i\0Aj_cnode_free: \09%i\0A\0Ain_journal: \09%12lu\0Ain_journal_bitmap: \09%12lu\0Ain_journal_reusable: \09%12lu\0Alock_journal: \09%12lu\0Alock_journal_wait: \09%12lu\0Ajournal_begin: \09%12lu\0Ajournal_relock_writers: \09%12lu\0Ajournal_relock_wcount: \09%12lu\0Amark_dirty: \09%12lu\0Amark_dirty_already: \09%12lu\0Amark_dirty_notjournal: \09%12lu\0Arestore_prepared: \09%12lu\0Aprepare: \09%12lu\0Aprepare_retry: \09%12lu\0A\00", align 1
@jp_journal_1st_block = common dso_local global i32 0, align 4
@jp_journal_dev = common dso_local global i32 0, align 4
@jp_journal_size = common dso_local global i32 0, align 4
@jp_journal_trans_max = common dso_local global i32 0, align 4
@jp_journal_magic = common dso_local global i32 0, align 4
@jp_journal_max_batch = common dso_local global i32 0, align 4
@jp_journal_max_trans_age = common dso_local global i32 0, align 4
@j_1st_reserved_block = common dso_local global i32 0, align 4
@j_state = common dso_local global i32 0, align 4
@j_trans_id = common dso_local global i32 0, align 4
@j_mount_id = common dso_local global i32 0, align 4
@j_start = common dso_local global i32 0, align 4
@j_len = common dso_local global i32 0, align 4
@j_len_alloc = common dso_local global i32 0, align 4
@j_bcount = common dso_local global i32 0, align 4
@j_first_unflushed_offset = common dso_local global i32 0, align 4
@j_last_flush_trans_id = common dso_local global i32 0, align 4
@j_trans_start_time = common dso_local global i32 0, align 4
@j_list_bitmap_index = common dso_local global i32 0, align 4
@j_must_wait = common dso_local global i32 0, align 4
@j_next_full_flush = common dso_local global i32 0, align 4
@j_next_async_flush = common dso_local global i32 0, align 4
@j_cnode_used = common dso_local global i32 0, align 4
@j_cnode_free = common dso_local global i32 0, align 4
@in_journal = common dso_local global i32 0, align 4
@in_journal_bitmap = common dso_local global i32 0, align 4
@in_journal_reusable = common dso_local global i32 0, align 4
@lock_journal = common dso_local global i32 0, align 4
@lock_journal_wait = common dso_local global i32 0, align 4
@journal_being = common dso_local global i32 0, align 4
@journal_relock_writers = common dso_local global i32 0, align 4
@journal_relock_wcount = common dso_local global i32 0, align 4
@mark_dirty = common dso_local global i32 0, align 4
@mark_dirty_already = common dso_local global i32 0, align 4
@mark_dirty_notjournal = common dso_local global i32 0, align 4
@restore_prepared = common dso_local global i32 0, align 4
@prepare = common dso_local global i32 0, align 4
@prepare_retry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_journal(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_sb_info*, align 8
  %7 = alloca %struct.reiserfs_super_block*, align 8
  %8 = alloca %struct.journal_params*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block* %12)
  store %struct.reiserfs_sb_info* %13, %struct.reiserfs_sb_info** %6, align 8
  %14 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %6, align 8
  %15 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %14, i32 0, i32 1
  %16 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %15, align 8
  store %struct.reiserfs_super_block* %16, %struct.reiserfs_super_block** %7, align 8
  %17 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %7, align 8
  %18 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.journal_params* %19, %struct.journal_params** %8, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load i32, i32* @jp_journal_1st_block, align 4
  %22 = call i32 @DJP(i32 %21)
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = call %struct.TYPE_6__* @SB_JOURNAL(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @jp_journal_dev, align 4
  %28 = call i32 @DJP(i32 %27)
  %29 = load i32, i32* @jp_journal_size, align 4
  %30 = call i32 @DJP(i32 %29)
  %31 = load i32, i32* @jp_journal_trans_max, align 4
  %32 = call i32 @DJP(i32 %31)
  %33 = load i32, i32* @jp_journal_magic, align 4
  %34 = call i32 @DJP(i32 %33)
  %35 = load i32, i32* @jp_journal_max_batch, align 4
  %36 = call i32 @DJP(i32 %35)
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = call %struct.TYPE_6__* @SB_JOURNAL(%struct.super_block* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @jp_journal_max_trans_age, align 4
  %42 = call i32 @DJP(i32 %41)
  %43 = load i32, i32* @j_1st_reserved_block, align 4
  %44 = call i32 @JF(i32 %43)
  %45 = load i32, i32* @j_state, align 4
  %46 = call i32 @JF(i32 %45)
  %47 = load i32, i32* @j_trans_id, align 4
  %48 = call i32 @JF(i32 %47)
  %49 = load i32, i32* @j_mount_id, align 4
  %50 = call i32 @JF(i32 %49)
  %51 = load i32, i32* @j_start, align 4
  %52 = call i32 @JF(i32 %51)
  %53 = load i32, i32* @j_len, align 4
  %54 = call i32 @JF(i32 %53)
  %55 = load i32, i32* @j_len_alloc, align 4
  %56 = call i32 @JF(i32 %55)
  %57 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %6, align 8
  %58 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @atomic_read(i32* %60)
  %62 = load i32, i32* @j_bcount, align 4
  %63 = call i32 @JF(i32 %62)
  %64 = load i32, i32* @j_first_unflushed_offset, align 4
  %65 = call i32 @JF(i32 %64)
  %66 = load i32, i32* @j_last_flush_trans_id, align 4
  %67 = call i32 @JF(i32 %66)
  %68 = load i32, i32* @j_trans_start_time, align 4
  %69 = call i32 @JF(i32 %68)
  %70 = call i32 @ktime_mono_to_real_seconds(i32 %69)
  %71 = load i32, i32* @j_list_bitmap_index, align 4
  %72 = call i32 @JF(i32 %71)
  %73 = load i32, i32* @j_must_wait, align 4
  %74 = call i32 @JF(i32 %73)
  %75 = load i32, i32* @j_next_full_flush, align 4
  %76 = call i32 @JF(i32 %75)
  %77 = load i32, i32* @j_next_async_flush, align 4
  %78 = call i32 @JF(i32 %77)
  %79 = load i32, i32* @j_cnode_used, align 4
  %80 = call i32 @JF(i32 %79)
  %81 = load i32, i32* @j_cnode_free, align 4
  %82 = call i32 @JF(i32 %81)
  %83 = load i32, i32* @in_journal, align 4
  %84 = call i32 @SFPJ(i32 %83)
  %85 = load i32, i32* @in_journal_bitmap, align 4
  %86 = call i32 @SFPJ(i32 %85)
  %87 = load i32, i32* @in_journal_reusable, align 4
  %88 = call i32 @SFPJ(i32 %87)
  %89 = load i32, i32* @lock_journal, align 4
  %90 = call i32 @SFPJ(i32 %89)
  %91 = load i32, i32* @lock_journal_wait, align 4
  %92 = call i32 @SFPJ(i32 %91)
  %93 = load i32, i32* @journal_being, align 4
  %94 = call i32 @SFPJ(i32 %93)
  %95 = load i32, i32* @journal_relock_writers, align 4
  %96 = call i32 @SFPJ(i32 %95)
  %97 = load i32, i32* @journal_relock_wcount, align 4
  %98 = call i32 @SFPJ(i32 %97)
  %99 = load i32, i32* @mark_dirty, align 4
  %100 = call i32 @SFPJ(i32 %99)
  %101 = load i32, i32* @mark_dirty_already, align 4
  %102 = call i32 @SFPJ(i32 %101)
  %103 = load i32, i32* @mark_dirty_notjournal, align 4
  %104 = call i32 @SFPJ(i32 %103)
  %105 = load i32, i32* @restore_prepared, align 4
  %106 = call i32 @SFPJ(i32 %105)
  %107 = load i32, i32* @prepare, align 4
  %108 = call i32 @SFPJ(i32 %107)
  %109 = load i32, i32* @prepare_retry, align 4
  %110 = call i32 @SFPJ(i32 %109)
  %111 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([906 x i8], [906 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56, i32 %61, i32 %63, i32 %65, i32 %67, i32 %70, i32 %72, i32 %74, i32 %76, i32 %78, i32 %80, i32 %82, i32 %84, i32 %86, i32 %88, i32 %90, i32 %92, i32 %94, i32 %96, i32 %98, i32 %100, i32 %102, i32 %104, i32 %106, i32 %108, i32 %110)
  ret i32 0
}

declare dso_local %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DJP(i32) #1

declare dso_local %struct.TYPE_6__* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @JF(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ktime_mono_to_real_seconds(i32) #1

declare dso_local i32 @SFPJ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
