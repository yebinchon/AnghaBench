; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtalloc_extent_is_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtalloc_extent_is_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtalloc_extent_is_free(%struct.xfs_mount* %0, %struct.xfs_trans* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %16 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @xfs_rtcheck_range(%struct.xfs_mount* %15, %struct.xfs_trans* %16, i32 %17, i32 %18, i32 1, i32* %12, i32* %13)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %6, align 4
  br label %27

24:                                               ; preds = %5
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** %11, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @xfs_rtcheck_range(%struct.xfs_mount*, %struct.xfs_trans*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
