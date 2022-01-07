; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_is_mergeable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_is_mergeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_rmap_irec = type { i64, i32 }

@XFS_RMAP_OWN_NULL = common dso_local global i64 0, align 8
@XFS_RMAP_UNWRITTEN = common dso_local global i32 0, align 4
@XFS_RMAP_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_RMAP_BMBT_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_rmap_irec*, i64, i32)* @xfs_rmap_is_mergeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_rmap_is_mergeable(%struct.xfs_rmap_irec* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_rmap_irec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_rmap_irec* %0, %struct.xfs_rmap_irec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %9 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XFS_RMAP_OWN_NULL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

14:                                               ; preds = %3
  %15 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %58

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @XFS_RMAP_UNWRITTEN, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %26 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @XFS_RMAP_UNWRITTEN, align 4
  %29 = and i32 %27, %28
  %30 = xor i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %58

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @XFS_RMAP_ATTR_FORK, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @XFS_RMAP_ATTR_FORK, align 4
  %41 = and i32 %39, %40
  %42 = xor i32 %36, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %58

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %50 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %53 = and i32 %51, %52
  %54 = xor i32 %48, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %58

57:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %56, %44, %32, %20, %13
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
