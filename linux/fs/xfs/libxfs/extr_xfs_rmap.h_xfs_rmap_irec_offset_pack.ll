; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.h_xfs_rmap_irec_offset_pack.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.h_xfs_rmap_irec_offset_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_rmap_irec = type { i32, i32 }

@XFS_RMAP_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_RMAP_OFF_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_RMAP_BMBT_BLOCK = common dso_local global i32 0, align 4
@XFS_RMAP_OFF_BMBT_BLOCK = common dso_local global i32 0, align 4
@XFS_RMAP_UNWRITTEN = common dso_local global i32 0, align 4
@XFS_RMAP_OFF_UNWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_rmap_irec*)* @xfs_rmap_irec_offset_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_rmap_irec_offset_pack(%struct.xfs_rmap_irec* %0) #0 {
  %2 = alloca %struct.xfs_rmap_irec*, align 8
  %3 = alloca i32, align 4
  store %struct.xfs_rmap_irec* %0, %struct.xfs_rmap_irec** %2, align 8
  %4 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @XFS_RMAP_OFF(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %2, align 8
  %9 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @XFS_RMAP_ATTR_FORK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @XFS_RMAP_OFF_ATTR_FORK, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %2, align 8
  %20 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @XFS_RMAP_OFF_BMBT_BLOCK, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %2, align 8
  %31 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XFS_RMAP_UNWRITTEN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @XFS_RMAP_OFF_UNWRITTEN, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @XFS_RMAP_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
