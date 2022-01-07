; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_longest_free_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_longest_free_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_perag = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xfs_alloc_longest_free_extent(%struct.xfs_perag* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.xfs_perag*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.xfs_perag* %0, %struct.xfs_perag** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %11 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %14, %3
  %21 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %25 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = sub nsw i64 %31, %38
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %30, %20
  %43 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %44 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %50 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %51, %52
  store i64 %53, i64* %4, align 8
  br label %68

54:                                               ; preds = %42
  %55 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %56 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %61 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ true, %54 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %64, %48
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
