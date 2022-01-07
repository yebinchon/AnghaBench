; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.h_xfs_owner_info_pack.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.h_xfs_owner_info_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_owner_info = type { i32, i32, i32 }

@XFS_RMAP_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_OWNER_INFO_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_RMAP_BMBT_BLOCK = common dso_local global i32 0, align 4
@XFS_OWNER_INFO_BMBT_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_owner_info*, i32, i32, i32)* @xfs_owner_info_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_owner_info_pack(%struct.xfs_owner_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_owner_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xfs_owner_info* %0, %struct.xfs_owner_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %5, align 8
  %11 = getelementptr inbounds %struct.xfs_owner_info, %struct.xfs_owner_info* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @XFS_RMAP_OFF(i32 %12)
  %14 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_owner_info, %struct.xfs_owner_info* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_owner_info, %struct.xfs_owner_info* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @XFS_RMAP_ATTR_FORK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i32, i32* @XFS_OWNER_INFO_ATTR_FORK, align 4
  %24 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %5, align 8
  %25 = getelementptr inbounds %struct.xfs_owner_info, %struct.xfs_owner_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @XFS_OWNER_INFO_BMBT_BLOCK, align 4
  %35 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_owner_info, %struct.xfs_owner_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @XFS_RMAP_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
