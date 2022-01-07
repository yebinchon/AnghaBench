; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_bmbt_irec = type { i32, i32, i32, i32 }
%struct.xfs_iext_rec = type { i32, i32 }

@XFS_IEXT_STARTOFF_MASK = common dso_local global i32 0, align 4
@XFS_IEXT_LENGTH_MASK = common dso_local global i32 0, align 4
@XFS_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@XFS_EXT_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_bmbt_irec*, %struct.xfs_iext_rec*)* @xfs_iext_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_iext_get(%struct.xfs_bmbt_irec* %0, %struct.xfs_iext_rec* %1) #0 {
  %3 = alloca %struct.xfs_bmbt_irec*, align 8
  %4 = alloca %struct.xfs_iext_rec*, align 8
  store %struct.xfs_bmbt_irec* %0, %struct.xfs_bmbt_irec** %3, align 8
  store %struct.xfs_iext_rec* %1, %struct.xfs_iext_rec** %4, align 8
  %5 = load %struct.xfs_iext_rec*, %struct.xfs_iext_rec** %4, align 8
  %6 = getelementptr inbounds %struct.xfs_iext_rec, %struct.xfs_iext_rec* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @XFS_IEXT_STARTOFF_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.xfs_iext_rec*, %struct.xfs_iext_rec** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_iext_rec, %struct.xfs_iext_rec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XFS_IEXT_LENGTH_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.xfs_iext_rec*, %struct.xfs_iext_rec** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_iext_rec, %struct.xfs_iext_rec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 54
  %23 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.xfs_iext_rec*, %struct.xfs_iext_rec** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_iext_rec, %struct.xfs_iext_rec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xfs_mask64hi(i32 42)
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 12
  %31 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.xfs_iext_rec*, %struct.xfs_iext_rec** %4, align 8
  %36 = getelementptr inbounds %struct.xfs_iext_rec, %struct.xfs_iext_rec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 2097152
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load i32, i32* @XFS_EXT_UNWRITTEN, align 4
  %42 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %3, align 8
  %43 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %48

44:                                               ; preds = %2
  %45 = load i32, i32* @XFS_EXT_NORM, align 4
  %46 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %3, align 8
  %47 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %40
  ret void
}

declare dso_local i32 @xfs_mask64hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
