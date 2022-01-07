; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.h_xfs_rmap_irec_offset_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.h_xfs_rmap_irec_offset_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_rmap_irec = type { i32, i32 }

@XFS_RMAP_OFF_MASK = common dso_local global i32 0, align 4
@XFS_RMAP_OFF_FLAGS = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@XFS_RMAP_OFF_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_RMAP_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_RMAP_OFF_BMBT_BLOCK = common dso_local global i32 0, align 4
@XFS_RMAP_BMBT_BLOCK = common dso_local global i32 0, align 4
@XFS_RMAP_OFF_UNWRITTEN = common dso_local global i32 0, align 4
@XFS_RMAP_UNWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xfs_rmap_irec*)* @xfs_rmap_irec_offset_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_rmap_irec_offset_unpack(i32 %0, %struct.xfs_rmap_irec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_rmap_irec*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.xfs_rmap_irec* %1, %struct.xfs_rmap_irec** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @XFS_RMAP_OFF_MASK, align 4
  %8 = load i32, i32* @XFS_RMAP_OFF_FLAGS, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %6, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EFSCORRUPTED, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @XFS_RMAP_OFF(i32 %17)
  %19 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @XFS_RMAP_OFF_ATTR_FORK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load i32, i32* @XFS_RMAP_ATTR_FORK, align 4
  %29 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %30 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %16
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @XFS_RMAP_OFF_BMBT_BLOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %40 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %41 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @XFS_RMAP_OFF_UNWRITTEN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @XFS_RMAP_UNWRITTEN, align 4
  %51 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %52 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %44
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @XFS_RMAP_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
