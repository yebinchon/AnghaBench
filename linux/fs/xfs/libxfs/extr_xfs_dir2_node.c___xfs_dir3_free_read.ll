; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c___xfs_dir3_free_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c___xfs_dir3_free_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_buf = type { i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@xfs_dir3_free_buf_ops = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@XFS_BLFT_DIR_FREE_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**)* @__xfs_dir3_free_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfs_dir3_free_read(%struct.xfs_trans* %0, %struct.xfs_inode* %1, i32 %2, i32 %3, %struct.xfs_buf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_buf**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %7, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.xfs_buf** %4, %struct.xfs_buf*** %11, align 8
  %14 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %19 = load i32, i32* @XFS_DATA_FORK, align 4
  %20 = call i32 @xfs_da_read_buf(%struct.xfs_trans* %14, %struct.xfs_inode* %15, i32 %16, i32 %17, %struct.xfs_buf** %18, i32 %19, i32* @xfs_dir3_free_buf_ops)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %24, align 8
  %26 = icmp ne %struct.xfs_buf* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23, %5
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %60

29:                                               ; preds = %23
  %30 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %33 = load %struct.xfs_buf*, %struct.xfs_buf** %32, align 8
  %34 = call i64 @xfs_dir3_free_header_check(%struct.xfs_inode* %30, i32 %31, %struct.xfs_buf* %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %38, align 8
  %40 = load i32, i32* @EFSCORRUPTED, align 4
  %41 = sub nsw i32 0, %40
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @xfs_verifier_error(%struct.xfs_buf* %39, i32 %41, i64 %42)
  %44 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %45 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %46 = load %struct.xfs_buf*, %struct.xfs_buf** %45, align 8
  %47 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %44, %struct.xfs_buf* %46)
  %48 = load i32, i32* @EFSCORRUPTED, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %60

50:                                               ; preds = %29
  %51 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %52 = icmp ne %struct.xfs_trans* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %55 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %56 = load %struct.xfs_buf*, %struct.xfs_buf** %55, align 8
  %57 = load i32, i32* @XFS_BLFT_DIR_FREE_BUF, align 4
  %58 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %54, %struct.xfs_buf* %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %50
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %37, %27
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @xfs_da_read_buf(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**, i32, i32*) #1

declare dso_local i64 @xfs_dir3_free_header_check(%struct.xfs_inode*, i32, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_verifier_error(%struct.xfs_buf*, i32, i64) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
