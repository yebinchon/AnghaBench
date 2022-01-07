; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_can_merge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_can_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_block_extent = type { i64, i64, i64, i64, i64, i64 }

@PNFS_BLOCK_NONE_DATA = common dso_local global i64 0, align 8
@PNFS_BLOCK_INVALID_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_block_extent*, %struct.pnfs_block_extent*)* @ext_can_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_can_merge(%struct.pnfs_block_extent* %0, %struct.pnfs_block_extent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnfs_block_extent*, align 8
  %5 = alloca %struct.pnfs_block_extent*, align 8
  store %struct.pnfs_block_extent* %0, %struct.pnfs_block_extent** %4, align 8
  store %struct.pnfs_block_extent* %1, %struct.pnfs_block_extent** %5, align 8
  %6 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %7 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %10 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %16 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %19 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %71

23:                                               ; preds = %14
  %24 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %25 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %28 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %32 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %71

36:                                               ; preds = %23
  %37 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %38 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PNFS_BLOCK_NONE_DATA, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %44 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %47 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %51 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %71

55:                                               ; preds = %42, %36
  %56 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %57 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PNFS_BLOCK_INVALID_DATA, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %63 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %66 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %71

70:                                               ; preds = %61, %55
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %69, %54, %35, %22, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
