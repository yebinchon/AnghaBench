; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_free_agfl_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_free_agfl_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_owner_info = type { i32 }

@XFS_AG_RESV_AGFL = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_free_agfl_block(%struct.xfs_trans* %0, i32 %1, i32 %2, %struct.xfs_buf* %3, %struct.xfs_owner_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_buf*, align 8
  %11 = alloca %struct.xfs_owner_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.xfs_buf* %3, %struct.xfs_buf** %10, align 8
  store %struct.xfs_owner_info* %4, %struct.xfs_owner_info** %11, align 8
  %14 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %11, align 8
  %19 = load i32, i32* @XFS_AG_RESV_AGFL, align 4
  %20 = call i32 @xfs_free_ag_extent(%struct.xfs_trans* %14, %struct.xfs_buf* %15, i32 %16, i32 %17, i32 1, %struct.xfs_owner_info* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %42

25:                                               ; preds = %5
  %26 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %27 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.xfs_buf* @xfs_btree_get_bufs(i32 %28, %struct.xfs_trans* %29, i32 %30, i32 %31)
  store %struct.xfs_buf* %32, %struct.xfs_buf** %13, align 8
  %33 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %34 = icmp ne %struct.xfs_buf* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @EFSCORRUPTED, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %42

38:                                               ; preds = %25
  %39 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %41 = call i32 @xfs_trans_binval(%struct.xfs_trans* %39, %struct.xfs_buf* %40)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %35, %23
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @xfs_free_ag_extent(%struct.xfs_trans*, %struct.xfs_buf*, i32, i32, i32, %struct.xfs_owner_info*, i32) #1

declare dso_local %struct.xfs_buf* @xfs_btree_get_bufs(i32, %struct.xfs_trans*, i32, i32) #1

declare dso_local i32 @xfs_trans_binval(%struct.xfs_trans*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
