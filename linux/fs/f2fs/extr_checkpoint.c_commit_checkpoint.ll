; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_commit_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_commit_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.writeback_control = type { i32 }
%struct.page = type { i32 }

@META = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@FS_CP_META_IO = common dso_local global i32 0, align 4
@META_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i8*, i32)* @commit_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_checkpoint(%struct.f2fs_sb_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.writeback_control, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = bitcast %struct.writeback_control* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.page* @f2fs_grab_meta_page(%struct.f2fs_sb_info* %11, i32 %12)
  store %struct.page* %13, %struct.page** %8, align 8
  %14 = load %struct.page*, %struct.page** %8, align 8
  %15 = load i32, i32* @META, align 4
  %16 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %14, i32 %15, i32 1, i32 1)
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = call i32 @page_address(%struct.page* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i32 @memcpy(i32 %18, i8* %19, i32 %20)
  %22 = load %struct.page*, %struct.page** %8, align 8
  %23 = call i32 @set_page_dirty(%struct.page* %22)
  %24 = load %struct.page*, %struct.page** %8, align 8
  %25 = call i32 @clear_page_dirty_for_io(%struct.page* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %33 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %32, i32 1)
  br label %34

34:                                               ; preds = %31, %3
  %35 = load %struct.page*, %struct.page** %8, align 8
  %36 = load i32, i32* @FS_CP_META_IO, align 4
  %37 = call i32 @__f2fs_write_meta_page(%struct.page* %35, %struct.writeback_control* %7, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %42 = call i64 @f2fs_cp_error(%struct.f2fs_sb_info* %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i1 [ false, %34 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.page*, %struct.page** %8, align 8
  %51 = call i32 @f2fs_put_page(%struct.page* %50, i32 1)
  br label %61

52:                                               ; preds = %44
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %53, i32 %54)
  %56 = load %struct.page*, %struct.page** %8, align 8
  %57 = call i32 @f2fs_put_page(%struct.page* %56, i32 0)
  %58 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %59 = load i32, i32* @META_FLUSH, align 4
  %60 = call i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info* %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %49
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.page* @f2fs_grab_meta_page(%struct.f2fs_sb_info*, i32) #2

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @page_address(%struct.page*) #2

declare dso_local i32 @set_page_dirty(%struct.page*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #2

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #2

declare dso_local i32 @__f2fs_write_meta_page(%struct.page*, %struct.writeback_control*, i32) #2

declare dso_local i64 @f2fs_cp_error(%struct.f2fs_sb_info*) #2

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #2

declare dso_local i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
