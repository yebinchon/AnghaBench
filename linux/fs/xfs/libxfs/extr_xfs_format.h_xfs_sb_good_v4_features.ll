; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_format.h_xfs_sb_good_v4_features.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_format.h_xfs_sb_good_v4_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_sb = type { i32, i32 }

@XFS_SB_VERSION_DIRV2BIT = common dso_local global i32 0, align 4
@XFS_SB_VERSION_EXTFLGBIT = common dso_local global i32 0, align 4
@XFS_SB_VERSION_OKBITS = common dso_local global i32 0, align 4
@XFS_SB_VERSION_MOREBITSBIT = common dso_local global i32 0, align 4
@XFS_SB_VERSION2_OKBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_sb*)* @xfs_sb_good_v4_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_sb_good_v4_features(%struct.xfs_sb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_sb*, align 8
  store %struct.xfs_sb* %0, %struct.xfs_sb** %3, align 8
  %4 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %5 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @XFS_SB_VERSION_DIRV2BIT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XFS_SB_VERSION_EXTFLGBIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %44

19:                                               ; preds = %11
  %20 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %21 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XFS_SB_VERSION_OKBITS, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %19
  %28 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %29 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XFS_SB_VERSION_MOREBITSBIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %36 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @XFS_SB_VERSION2_OKBITS, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %19
  store i32 0, i32* %2, align 4
  br label %44

43:                                               ; preds = %34, %27
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %18, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
