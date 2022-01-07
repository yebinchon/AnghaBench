; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_dirty_segments.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_dirty_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_2__ = type { i32* }

@DIRTY_HOT_DATA = common dso_local global i64 0, align 8
@DIRTY_WARM_DATA = common dso_local global i64 0, align 8
@DIRTY_COLD_DATA = common dso_local global i64 0, align 8
@DIRTY_HOT_NODE = common dso_local global i64 0, align 8
@DIRTY_WARM_NODE = common dso_local global i64 0, align 8
@DIRTY_COLD_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @dirty_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirty_segments(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %3 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %4 = call %struct.TYPE_2__* @DIRTY_I(%struct.f2fs_sb_info* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @DIRTY_HOT_DATA, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %11 = call %struct.TYPE_2__* @DIRTY_I(%struct.f2fs_sb_info* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @DIRTY_WARM_DATA, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %9, %16
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %19 = call %struct.TYPE_2__* @DIRTY_I(%struct.f2fs_sb_info* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @DIRTY_COLD_DATA, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %17, %24
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %27 = call %struct.TYPE_2__* @DIRTY_I(%struct.f2fs_sb_info* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @DIRTY_HOT_NODE, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %25, %32
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %35 = call %struct.TYPE_2__* @DIRTY_I(%struct.f2fs_sb_info* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @DIRTY_WARM_NODE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add i32 %33, %40
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %43 = call %struct.TYPE_2__* @DIRTY_I(%struct.f2fs_sb_info* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @DIRTY_COLD_NODE, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %41, %48
  ret i32 %49
}

declare dso_local %struct.TYPE_2__* @DIRTY_I(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
