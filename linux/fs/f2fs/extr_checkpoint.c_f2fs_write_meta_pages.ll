; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_write_meta_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_write_meta_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.writeback_control = type { i64, i64, i32 }
%struct.f2fs_sb_info = type { i32 }

@SBI_POR_DOING = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@F2FS_DIRTY_META = common dso_local global i32 0, align 4
@META = common dso_local global i32 0, align 4
@FS_META_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @f2fs_write_meta_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_write_meta_pages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %9 = load %struct.address_space*, %struct.address_space** %4, align 8
  %10 = call %struct.f2fs_sb_info* @F2FS_M_SB(%struct.address_space* %9)
  store %struct.f2fs_sb_info* %10, %struct.f2fs_sb_info** %6, align 8
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %12 = load i32, i32* @SBI_POR_DOING, align 4
  %13 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %11, i32 %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %19 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WB_SYNC_ALL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %25 = load i32, i32* @F2FS_DIRTY_META, align 4
  %26 = call i64 @get_pages(%struct.f2fs_sb_info* %24, i32 %25)
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %28 = load i32, i32* @META, align 4
  %29 = call i64 @nr_pages_to_skip(%struct.f2fs_sb_info* %27, i32 %28)
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %69

32:                                               ; preds = %23, %17
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %34 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %33, i32 0, i32 0
  %35 = call i32 @mutex_trylock(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %69

38:                                               ; preds = %32
  %39 = load %struct.address_space*, %struct.address_space** %4, align 8
  %40 = getelementptr inbounds %struct.address_space, %struct.address_space* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %43 = load i32, i32* @META, align 4
  %44 = call i32 @trace_f2fs_writepages(i32 %41, %struct.writeback_control* %42, i32 %43)
  %45 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %46 = load i32, i32* @META, align 4
  %47 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %48 = call i64 @nr_pages_to_write(%struct.f2fs_sb_info* %45, i32 %46, %struct.writeback_control* %47)
  store i64 %48, i64* %7, align 8
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %50 = load i32, i32* @META, align 4
  %51 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %52 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @FS_META_IO, align 4
  %55 = call i64 @f2fs_sync_meta_pages(%struct.f2fs_sb_info* %49, i32 %50, i64 %53, i32 %54)
  store i64 %55, i64* %8, align 8
  %56 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %57 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %60 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load i64, i64* %7, align 8
  %65 = sub nsw i64 %63, %64
  %66 = call i64 @max(i64 0, i64 %65)
  %67 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %68 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  store i32 0, i32* %3, align 4
  br label %85

69:                                               ; preds = %37, %31, %16
  %70 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %71 = load i32, i32* @F2FS_DIRTY_META, align 4
  %72 = call i64 @get_pages(%struct.f2fs_sb_info* %70, i32 %71)
  %73 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %74 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 8
  %79 = load %struct.address_space*, %struct.address_space** %4, align 8
  %80 = getelementptr inbounds %struct.address_space, %struct.address_space* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %83 = load i32, i32* @META, align 4
  %84 = call i32 @trace_f2fs_writepages(i32 %81, %struct.writeback_control* %82, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %69, %38
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.f2fs_sb_info* @F2FS_M_SB(%struct.address_space*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @get_pages(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @nr_pages_to_skip(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @trace_f2fs_writepages(i32, %struct.writeback_control*, i32) #1

declare dso_local i64 @nr_pages_to_write(%struct.f2fs_sb_info*, i32, %struct.writeback_control*) #1

declare dso_local i64 @f2fs_sync_meta_pages(%struct.f2fs_sb_info*, i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
