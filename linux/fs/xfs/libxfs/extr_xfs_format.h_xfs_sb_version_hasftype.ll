; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_format.h_xfs_sb_version_hasftype.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_format.h_xfs_sb_version_hasftype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_sb = type { i32 }

@XFS_SB_VERSION_5 = common dso_local global i64 0, align 8
@XFS_SB_FEAT_INCOMPAT_FTYPE = common dso_local global i32 0, align 4
@XFS_SB_VERSION2_FTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_sb*)* @xfs_sb_version_hasftype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_sb_version_hasftype(%struct.xfs_sb* %0) #0 {
  %2 = alloca %struct.xfs_sb*, align 8
  store %struct.xfs_sb* %0, %struct.xfs_sb** %2, align 8
  %3 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %4 = call i64 @XFS_SB_VERSION_NUM(%struct.xfs_sb* %3)
  %5 = load i64, i64* @XFS_SB_VERSION_5, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %9 = load i32, i32* @XFS_SB_FEAT_INCOMPAT_FTYPE, align 4
  %10 = call i64 @xfs_sb_has_incompat_feature(%struct.xfs_sb* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %14 = call i64 @xfs_sb_version_hasmorebits(%struct.xfs_sb* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %18 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @XFS_SB_VERSION2_FTYPE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i1 [ false, %12 ], [ %22, %16 ]
  br label %25

25:                                               ; preds = %23, %7
  %26 = phi i1 [ true, %7 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i64 @XFS_SB_VERSION_NUM(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_has_incompat_feature(%struct.xfs_sb*, i32) #1

declare dso_local i64 @xfs_sb_version_hasmorebits(%struct.xfs_sb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
