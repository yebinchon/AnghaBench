; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___get_next_segno.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___get_next_segno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@NOHEAP = common dso_local global i32 0, align 4
@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@ALLOC_NEXT = common dso_local global i64 0, align 8
@ALLOC_MODE_REUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32)* @__get_next_segno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_next_segno(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %8 = call i64 @__is_large_section(%struct.f2fs_sb_info* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_6__* @CURSEG_I(%struct.f2fs_sb_info* %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %18 = load i32, i32* @SBI_CP_DISABLED, align 4
  %19 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %17, i32 %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %69

23:                                               ; preds = %16
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %25 = load i32, i32* @NOHEAP, align 4
  %26 = call i64 @test_opt(%struct.f2fs_sb_info* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @CURSEG_HOT_DATA, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @IS_NODESEG(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28
  store i32 0, i32* %3, align 4
  br label %69

37:                                               ; preds = %32, %23
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %39 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @ALLOC_NEXT, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %48 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @ALLOC_NEXT, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %69

54:                                               ; preds = %37
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %56 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ALLOC_MODE_REUSE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %69

63:                                               ; preds = %54
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call %struct.TYPE_6__* @CURSEG_I(%struct.f2fs_sb_info* %64, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %62, %46, %36, %22, %10
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @__is_large_section(%struct.f2fs_sb_info*) #1

declare dso_local %struct.TYPE_6__* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_NODESEG(i32) #1

declare dso_local %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
