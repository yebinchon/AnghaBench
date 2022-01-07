; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_buffer_head_io.c_ocfs2_write_super_or_backup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_buffer_head_io.c_ocfs2_write_super_or_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i64, i32, i32 }
%struct.ocfs2_dinode = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@end_buffer_write_sync = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_write_super_or_backup(%struct.ocfs2_super* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %8 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %10, %struct.ocfs2_dinode** %6, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %12 = call i32 @buffer_jbd(%struct.buffer_head* %11)
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ocfs2_check_super_or_backup(i32 %16, i32 %19)
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %22 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %26 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @EROFS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  br label %68

33:                                               ; preds = %24
  %34 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %35 = call i32 @lock_buffer(%struct.buffer_head* %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %37 = call i32 @set_buffer_uptodate(%struct.buffer_head* %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %39 = call i32 @clear_buffer_dirty(%struct.buffer_head* %38)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %41 = call i32 @get_bh(%struct.buffer_head* %40)
  %42 = load i32, i32* @end_buffer_write_sync, align 4
  %43 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %46 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %52 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %51, i32 0, i32 0
  %53 = call i32 @ocfs2_compute_meta_ecc(i32 %47, i64 %50, i32* %52)
  %54 = load i32, i32* @REQ_OP_WRITE, align 4
  %55 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %56 = call i32 @submit_bh(i32 %54, i32 0, %struct.buffer_head* %55)
  %57 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %58 = call i32 @wait_on_buffer(%struct.buffer_head* %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %60 = call i32 @buffer_uptodate(%struct.buffer_head* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %33
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %67

67:                                               ; preds = %62, %33
  br label %68

68:                                               ; preds = %67, %28
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_check_super_or_backup(i32, i32) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_compute_meta_ecc(i32, i64, i32*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
