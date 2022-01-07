; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_new_curseg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_new_curseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i32, i32, i32, i32 }

@ALLOC_LEFT = common dso_local global i32 0, align 4
@CURSEG_WARM_DATA = common dso_local global i32 0, align 4
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@ALLOC_RIGHT = common dso_local global i32 0, align 4
@NOHEAP = common dso_local global i32 0, align 4
@LFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i32)* @new_curseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_curseg(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.curseg_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %10, i32 %11)
  store %struct.curseg_info* %12, %struct.curseg_info** %7, align 8
  %13 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %14 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @ALLOC_LEFT, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %18 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %19 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @GET_SUM_BLOCK(%struct.f2fs_sb_info* %21, i32 %22)
  %24 = call i32 @write_sum_page(%struct.f2fs_sb_info* %17, i32 %20, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CURSEG_WARM_DATA, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %3
  %33 = load i32, i32* @ALLOC_RIGHT, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %36 = load i32, i32* @NOHEAP, align 4
  %37 = call i64 @test_opt(%struct.f2fs_sb_info* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @ALLOC_RIGHT, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @__get_next_segno(%struct.f2fs_sb_info* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @get_new_segment(%struct.f2fs_sb_info* %45, i32* %8, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %51 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @reset_curseg(%struct.f2fs_sb_info* %52, i32 %53, i32 1)
  %55 = load i32, i32* @LFS, align 4
  %56 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %57 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @write_sum_page(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @GET_SUM_BLOCK(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__get_next_segno(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @get_new_segment(%struct.f2fs_sb_info*, i32*, i32, i32) #1

declare dso_local i32 @reset_curseg(%struct.f2fs_sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
