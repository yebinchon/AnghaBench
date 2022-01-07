; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_buffer_head_io.c_ocfs2_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_buffer_head_io.c_ocfs2_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.ocfs2_caching_info = type { i32 }

@OCFS2_SUPER_BLOCK_BLKNO = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@end_buffer_write_sync = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_write_block(%struct.ocfs2_super* %0, %struct.buffer_head* %1, %struct.ocfs2_caching_info* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ocfs2_caching_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %6, align 8
  %12 = call i32 @trace_ocfs2_write_block(i64 %10, %struct.ocfs2_caching_info* %11)
  %13 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OCFS2_SUPER_BLOCK_BLKNO, align 8
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %21 = call i32 @buffer_jbd(%struct.buffer_head* %20)
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %24 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @EROFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %65

31:                                               ; preds = %3
  %32 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %6, align 8
  %33 = call i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %35 = call i32 @lock_buffer(%struct.buffer_head* %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %37 = call i32 @set_buffer_uptodate(%struct.buffer_head* %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %39 = call i32 @clear_buffer_dirty(%struct.buffer_head* %38)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %41 = call i32 @get_bh(%struct.buffer_head* %40)
  %42 = load i32, i32* @end_buffer_write_sync, align 4
  %43 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @REQ_OP_WRITE, align 4
  %46 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %47 = call i32 @submit_bh(i32 %45, i32 0, %struct.buffer_head* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %49 = call i32 @wait_on_buffer(%struct.buffer_head* %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %51 = call i64 @buffer_uptodate(%struct.buffer_head* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %6, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %56 = call i32 @ocfs2_set_buffer_uptodate(%struct.ocfs2_caching_info* %54, %struct.buffer_head* %55)
  br label %62

57:                                               ; preds = %31
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %62

62:                                               ; preds = %57, %53
  %63 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %6, align 8
  %64 = call i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info* %63)
  br label %65

65:                                               ; preds = %62, %26
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @trace_ocfs2_write_block(i64, %struct.ocfs2_caching_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_set_buffer_uptodate(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
