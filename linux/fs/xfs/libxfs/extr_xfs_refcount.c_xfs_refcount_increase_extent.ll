; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_increase_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_increase_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_bmbt_irec = type { i32, i32 }

@XFS_REFCOUNT_INCREASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_refcount_increase_extent(%struct.xfs_trans* %0, %struct.xfs_bmbt_irec* %1) #0 {
  %3 = alloca %struct.xfs_trans*, align 8
  %4 = alloca %struct.xfs_bmbt_irec*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %3, align 8
  store %struct.xfs_bmbt_irec* %1, %struct.xfs_bmbt_irec** %4, align 8
  %5 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @xfs_sb_version_hasreflink(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %22

12:                                               ; preds = %2
  %13 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %14 = load i32, i32* @XFS_REFCOUNT_INCREASE, align 4
  %15 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__xfs_refcount_add(%struct.xfs_trans* %13, i32 %14, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @xfs_sb_version_hasreflink(i32*) #1

declare dso_local i32 @__xfs_refcount_add(%struct.xfs_trans*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
