; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_ioend_can_merge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_ioend_can_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ioend = type { i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@XFS_COW_FORK = common dso_local global i64 0, align 8
@XFS_EXT_UNWRITTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_ioend*, %struct.xfs_ioend*)* @xfs_ioend_can_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_ioend_can_merge(%struct.xfs_ioend* %0, %struct.xfs_ioend* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_ioend*, align 8
  %5 = alloca %struct.xfs_ioend*, align 8
  store %struct.xfs_ioend* %0, %struct.xfs_ioend** %4, align 8
  store %struct.xfs_ioend* %1, %struct.xfs_ioend** %5, align 8
  %6 = load %struct.xfs_ioend*, %struct.xfs_ioend** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_ioend, %struct.xfs_ioend* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.xfs_ioend*, %struct.xfs_ioend** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_ioend, %struct.xfs_ioend* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.xfs_ioend*, %struct.xfs_ioend** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_ioend, %struct.xfs_ioend* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XFS_COW_FORK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.xfs_ioend*, %struct.xfs_ioend** %5, align 8
  %26 = getelementptr inbounds %struct.xfs_ioend, %struct.xfs_ioend* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XFS_COW_FORK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = xor i32 %24, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %64

34:                                               ; preds = %18
  %35 = load %struct.xfs_ioend*, %struct.xfs_ioend** %4, align 8
  %36 = getelementptr inbounds %struct.xfs_ioend, %struct.xfs_ioend* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XFS_EXT_UNWRITTEN, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load %struct.xfs_ioend*, %struct.xfs_ioend** %5, align 8
  %42 = getelementptr inbounds %struct.xfs_ioend, %struct.xfs_ioend* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @XFS_EXT_UNWRITTEN, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = xor i32 %40, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %64

50:                                               ; preds = %34
  %51 = load %struct.xfs_ioend*, %struct.xfs_ioend** %4, align 8
  %52 = getelementptr inbounds %struct.xfs_ioend, %struct.xfs_ioend* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.xfs_ioend*, %struct.xfs_ioend** %4, align 8
  %55 = getelementptr inbounds %struct.xfs_ioend, %struct.xfs_ioend* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.xfs_ioend*, %struct.xfs_ioend** %5, align 8
  %59 = getelementptr inbounds %struct.xfs_ioend, %struct.xfs_ioend* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %64

63:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %49, %33, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
