; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_change_curseg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_change_curseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.dirty_seglist_info = type { i32 }
%struct.curseg_info = type { i32, i32, i32, i32 }
%struct.f2fs_summary_block = type { i32 }
%struct.page = type { i32 }

@PRE = common dso_local global i32 0, align 4
@DIRTY = common dso_local global i32 0, align 4
@SSR = common dso_local global i32 0, align 4
@SUM_ENTRY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32)* @change_curseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_curseg(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dirty_seglist_info*, align 8
  %6 = alloca %struct.curseg_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_summary_block*, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %11 = call %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info* %10)
  store %struct.dirty_seglist_info* %11, %struct.dirty_seglist_info** %5, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %12, i32 %13)
  store %struct.curseg_info* %14, %struct.curseg_info** %6, align 8
  %15 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %16 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %19 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %20 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %23 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %24 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GET_SUM_BLOCK(%struct.f2fs_sb_info* %22, i32 %25)
  %27 = call i32 @write_sum_page(%struct.f2fs_sb_info* %18, i32 %21, i32 %26)
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @__set_test_and_inuse(%struct.f2fs_sb_info* %28, i32 %29)
  %31 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %5, align 8
  %32 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PRE, align 4
  %37 = call i32 @__remove_dirty_segment(%struct.f2fs_sb_info* %34, i32 %35, i32 %36)
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @DIRTY, align 4
  %41 = call i32 @__remove_dirty_segment(%struct.f2fs_sb_info* %38, i32 %39, i32 %40)
  %42 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %5, align 8
  %43 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @reset_curseg(%struct.f2fs_sb_info* %45, i32 %46, i32 1)
  %48 = load i32, i32* @SSR, align 4
  %49 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %50 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %52 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %53 = call i32 @__next_free_blkoff(%struct.f2fs_sb_info* %51, %struct.curseg_info* %52, i32 0)
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.page* @f2fs_get_sum_page(%struct.f2fs_sb_info* %54, i32 %55)
  store %struct.page* %56, %struct.page** %9, align 8
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %58 = load %struct.page*, %struct.page** %9, align 8
  %59 = call i32 @IS_ERR(%struct.page* %58)
  %60 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %57, i32 %59)
  %61 = load %struct.page*, %struct.page** %9, align 8
  %62 = call i64 @page_address(%struct.page* %61)
  %63 = inttoptr i64 %62 to %struct.f2fs_summary_block*
  store %struct.f2fs_summary_block* %63, %struct.f2fs_summary_block** %8, align 8
  %64 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %65 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %8, align 8
  %68 = load i32, i32* @SUM_ENTRY_SIZE, align 4
  %69 = call i32 @memcpy(i32 %66, %struct.f2fs_summary_block* %67, i32 %68)
  %70 = load %struct.page*, %struct.page** %9, align 8
  %71 = call i32 @f2fs_put_page(%struct.page* %70, i32 1)
  ret void
}

declare dso_local %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @write_sum_page(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @GET_SUM_BLOCK(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__set_test_and_inuse(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__remove_dirty_segment(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @reset_curseg(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @__next_free_blkoff(%struct.f2fs_sb_info*, %struct.curseg_info*, i32) #1

declare dso_local %struct.page* @f2fs_get_sum_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @memcpy(i32, %struct.f2fs_summary_block*, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
