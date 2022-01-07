; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_write_current_sum_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_write_current_sum_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i32, i32, i32*, %struct.f2fs_summary_block* }
%struct.f2fs_summary_block = type { i32, i32*, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@SUM_JOURNAL_SIZE = common dso_local global i32 0, align 4
@SUM_ENTRY_SIZE = common dso_local global i32 0, align 4
@SUM_FOOTER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i32)* @write_current_sum_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_current_sum_page(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.curseg_info*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.f2fs_summary_block*, align 8
  %10 = alloca %struct.f2fs_summary_block*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %11, i32 %12)
  store %struct.curseg_info* %13, %struct.curseg_info** %7, align 8
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.page* @f2fs_grab_meta_page(%struct.f2fs_sb_info* %14, i32 %15)
  store %struct.page* %16, %struct.page** %8, align 8
  %17 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %18 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %17, i32 0, i32 3
  %19 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %18, align 8
  store %struct.f2fs_summary_block* %19, %struct.f2fs_summary_block** %9, align 8
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = call i64 @page_address(%struct.page* %20)
  %22 = inttoptr i64 %21 to %struct.f2fs_summary_block*
  store %struct.f2fs_summary_block* %22, %struct.f2fs_summary_block** %10, align 8
  %23 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %10, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = call i32 @memset(%struct.f2fs_summary_block* %23, i32 0, i32 %24)
  %26 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %27 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %30 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %29, i32 0, i32 1
  %31 = call i32 @down_read(i32* %30)
  %32 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %10, align 8
  %33 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %32, i32 0, i32 2
  %34 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %35 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @SUM_JOURNAL_SIZE, align 4
  %38 = call i32 @memcpy(i32* %33, i32* %36, i32 %37)
  %39 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %40 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %39, i32 0, i32 1
  %41 = call i32 @up_read(i32* %40)
  %42 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %10, align 8
  %43 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %9, align 8
  %46 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @SUM_ENTRY_SIZE, align 4
  %49 = call i32 @memcpy(i32* %44, i32* %47, i32 %48)
  %50 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %10, align 8
  %51 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %50, i32 0, i32 0
  %52 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %9, align 8
  %53 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %52, i32 0, i32 0
  %54 = load i32, i32* @SUM_FOOTER_SIZE, align 4
  %55 = call i32 @memcpy(i32* %51, i32* %53, i32 %54)
  %56 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %57 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.page*, %struct.page** %8, align 8
  %60 = call i32 @set_page_dirty(%struct.page* %59)
  %61 = load %struct.page*, %struct.page** %8, align 8
  %62 = call i32 @f2fs_put_page(%struct.page* %61, i32 1)
  ret void
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.page* @f2fs_grab_meta_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @memset(%struct.f2fs_summary_block*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
