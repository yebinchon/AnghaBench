; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir3_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir3_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_buf = type { i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@xfs_dir3_data_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_DIR_DATA_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir3_data_read(%struct.xfs_trans* %0, %struct.xfs_inode* %1, i32 %2, i32 %3, %struct.xfs_buf** %4) #0 {
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_buf**, align 8
  %11 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %6, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.xfs_buf** %4, %struct.xfs_buf*** %10, align 8
  %12 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.xfs_buf**, %struct.xfs_buf*** %10, align 8
  %17 = load i32, i32* @XFS_DATA_FORK, align 4
  %18 = call i32 @xfs_da_read_buf(%struct.xfs_trans* %12, %struct.xfs_inode* %13, i32 %14, i32 %15, %struct.xfs_buf** %16, i32 %17, i32* @xfs_dir3_data_buf_ops)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %5
  %22 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %23 = icmp ne %struct.xfs_trans* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.xfs_buf**, %struct.xfs_buf*** %10, align 8
  %26 = load %struct.xfs_buf*, %struct.xfs_buf** %25, align 8
  %27 = icmp ne %struct.xfs_buf* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %30 = load %struct.xfs_buf**, %struct.xfs_buf*** %10, align 8
  %31 = load %struct.xfs_buf*, %struct.xfs_buf** %30, align 8
  %32 = load i32, i32* @XFS_BLFT_DIR_DATA_BUF, align 4
  %33 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %29, %struct.xfs_buf* %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %24, %21, %5
  %35 = load i32, i32* %11, align 4
  ret i32 %35
}

declare dso_local i32 @xfs_da_read_buf(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**, i32, i32*) #1

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
