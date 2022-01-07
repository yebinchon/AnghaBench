; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_shrink_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_shrink_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, %struct.TYPE_2__*, %struct.xfs_trans*, %struct.xfs_inode* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_buf = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_shrink_inode(%struct.xfs_da_args* %0, i32 %1, %struct.xfs_buf* %2) #0 {
  %4 = alloca %struct.xfs_da_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_trans*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.xfs_buf* %2, %struct.xfs_buf** %6, align 8
  %13 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %14 = call i32 @trace_xfs_da_shrink_inode(%struct.xfs_da_args* %13)
  %15 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %15, i32 0, i32 3
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %16, align 8
  store %struct.xfs_inode* %17, %struct.xfs_inode** %7, align 8
  %18 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %21, i32 0, i32 2
  %23 = load %struct.xfs_trans*, %struct.xfs_trans** %22, align 8
  store %struct.xfs_trans* %23, %struct.xfs_trans** %12, align 8
  %24 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %54, %3
  %30 = load %struct.xfs_trans*, %struct.xfs_trans** %12, align 8
  %31 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @xfs_bmapi_aflag(i32 %34)
  %36 = call i32 @xfs_bunmapi(%struct.xfs_trans* %30, %struct.xfs_inode* %31, i32 %32, i32 %33, i32 %35, i32 0, i32* %8)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @ENOSPC, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @XFS_DATA_FORK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %55

46:                                               ; preds = %41
  %47 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %48 = call i32 @xfs_da3_swap_lastblock(%struct.xfs_da_args* %47, i32* %5, %struct.xfs_buf** %6)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %55

52:                                               ; preds = %46
  br label %54

53:                                               ; preds = %29
  br label %55

54:                                               ; preds = %52
  br label %29

55:                                               ; preds = %53, %51, %45
  %56 = load %struct.xfs_trans*, %struct.xfs_trans** %12, align 8
  %57 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %58 = call i32 @xfs_trans_binval(%struct.xfs_trans* %56, %struct.xfs_buf* %57)
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @trace_xfs_da_shrink_inode(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_bunmapi(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @xfs_bmapi_aflag(i32) #1

declare dso_local i32 @xfs_da3_swap_lastblock(%struct.xfs_da_args*, i32*, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_trans_binval(%struct.xfs_trans*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
