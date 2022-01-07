; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_init_min_max_mtime.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_init_min_max_mtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.sit_info = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ULLONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @init_min_max_mtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_min_max_mtime(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.sit_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %8 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %7)
  store %struct.sit_info* %8, %struct.sit_info** %3, align 8
  %9 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %10 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %9, i32 0, i32 1
  %11 = call i32 @down_write(i32* %10)
  %12 = load i64, i64* @ULLONG_MAX, align 8
  %13 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %14 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %56, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %18 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %17)
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  store i64 0, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %24 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %29, %30
  %32 = call %struct.TYPE_2__* @get_seg_entry(%struct.f2fs_sb_info* %28, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %43 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @div_u64(i64 %41, i32 %44)
  store i64 %45, i64* %6, align 8
  %46 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %47 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %54 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %40
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %58 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %15

62:                                               ; preds = %15
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %64 = call i32 @get_mtime(%struct.f2fs_sb_info* %63, i32 0)
  %65 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %66 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sit_info*, %struct.sit_info** %3, align 8
  %68 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %67, i32 0, i32 1
  %69 = call i32 @up_write(i32* %68)
  ret void
}

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @MAIN_SEGS(%struct.f2fs_sb_info*) #1

declare dso_local %struct.TYPE_2__* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @div_u64(i64, i32) #1

declare dso_local i32 @get_mtime(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
