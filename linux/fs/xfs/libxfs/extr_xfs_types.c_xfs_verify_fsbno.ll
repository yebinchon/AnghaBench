; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_types.c_xfs_verify_fsbno.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_types.c_xfs_verify_fsbno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_verify_fsbno(%struct.xfs_mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @XFS_FSB_TO_AGNO(%struct.xfs_mount* %7, i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %20, i32 %21)
  %23 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %18, i64 %19, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @XFS_FSB_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_verify_agbno(%struct.xfs_mount*, i64, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
