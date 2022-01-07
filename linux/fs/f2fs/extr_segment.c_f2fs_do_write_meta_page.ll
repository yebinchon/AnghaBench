; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_do_write_meta_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_do_write_meta_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i64 }
%struct.f2fs_io_info = type { i32, i64, i64, i32, i32*, %struct.page*, i32, i32, i32, %struct.f2fs_sb_info* }

@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@HOT = common dso_local global i32 0, align 4
@META = common dso_local global i32 0, align 4
@F2FS_BLKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_do_write_meta_page(%struct.f2fs_sb_info* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.f2fs_io_info, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 0
  %9 = load i32, i32* @REQ_SYNC, align 4
  %10 = load i32, i32* @REQ_META, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @REQ_PRIO, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 8
  %14 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 1
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %14, align 8
  %18 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 2
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %18, align 8
  %22 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 3
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 5
  %25 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %25, %struct.page** %24, align 8
  %26 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 6
  %27 = load i32, i32* @REQ_OP_WRITE, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 7
  %29 = load i32, i32* @HOT, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 8
  %31 = load i32, i32* @META, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 9
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  store %struct.f2fs_sb_info* %33, %struct.f2fs_sb_info** %32, align 8
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %38 = call i64 @MAIN_BLKADDR(%struct.f2fs_sb_info* %37)
  %39 = icmp sge i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %3
  %44 = load i32, i32* @REQ_META, align 4
  %45 = xor i32 %44, -1
  %46 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %3
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = call i32 @set_page_writeback(%struct.page* %50)
  %52 = load %struct.page*, %struct.page** %5, align 8
  %53 = call i32 @ClearPageError(%struct.page* %52)
  %54 = call i32 @f2fs_submit_page_write(%struct.f2fs_io_info* %7)
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %56 = load %struct.page*, %struct.page** %5, align 8
  %57 = getelementptr inbounds %struct.page, %struct.page* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @stat_inc_meta_count(%struct.f2fs_sb_info* %55, i64 %58)
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @F2FS_BLKSIZE, align 4
  %63 = call i32 @f2fs_update_iostat(%struct.f2fs_sb_info* %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @MAIN_BLKADDR(%struct.f2fs_sb_info*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @f2fs_submit_page_write(%struct.f2fs_io_info*) #1

declare dso_local i32 @stat_inc_meta_count(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @f2fs_update_iostat(%struct.f2fs_sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
