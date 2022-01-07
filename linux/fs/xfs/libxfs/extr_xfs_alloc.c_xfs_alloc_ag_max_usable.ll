; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_ag_max_usable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_ag_max_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@XFS_ALLOC_AGFL_RESERVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_alloc_ag_max_usable(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  %4 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %5 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %6 = call i32 @XFS_FSS_TO_BB(%struct.xfs_mount* %5, i32 4)
  %7 = call i32 @XFS_BB_TO_FSB(%struct.xfs_mount* %4, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* @XFS_ALLOC_AGFL_RESERVE, align 8
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = add i32 %13, 3
  store i32 %14, i32* %3, align 4
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %15, i32 0, i32 0
  %17 = call i64 @xfs_sb_version_hasfinobt(%struct.TYPE_4__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %24 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %23, i32 0, i32 0
  %25 = call i64 @xfs_sb_version_hasrmapbt(%struct.TYPE_4__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %32 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %31, i32 0, i32 0
  %33 = call i64 @xfs_sb_version_hasreflink(%struct.TYPE_4__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %40 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %3, align 4
  %44 = sub i32 %42, %43
  ret i32 %44
}

declare dso_local i32 @XFS_BB_TO_FSB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSS_TO_BB(%struct.xfs_mount*, i32) #1

declare dso_local i64 @xfs_sb_version_hasfinobt(%struct.TYPE_4__*) #1

declare dso_local i64 @xfs_sb_version_hasrmapbt(%struct.TYPE_4__*) #1

declare dso_local i64 @xfs_sb_version_hasreflink(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
