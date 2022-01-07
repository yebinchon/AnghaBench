; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir2_grow_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir2_grow_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, %struct.TYPE_4__*, %struct.xfs_inode* }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_3__, %struct.xfs_mount* }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_mount = type { i32 }

@XFS_DIR2_SPACE_SIZE = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_SPACE = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_grow_inode(%struct.xfs_da_args* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_da_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca %struct.xfs_mount*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %14, i32 0, i32 2
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %15, align 8
  store %struct.xfs_inode* %16, %struct.xfs_inode** %8, align 8
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %18 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %17, i32 0, i32 1
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %18, align 8
  store %struct.xfs_mount* %19, %struct.xfs_mount** %9, align 8
  %20 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @trace_xfs_dir2_grow_inode(%struct.xfs_da_args* %20, i32 %21)
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @XFS_DIR2_SPACE_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i64 @XFS_B_TO_FSBT(%struct.xfs_mount* %23, i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @xfs_da_grow_inode_int(%struct.xfs_da_args* %33, i64* %10, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %4, align 4
  br label %77

40:                                               ; preds = %3
  %41 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %42 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @xfs_dir2_da_to_db(%struct.TYPE_4__* %43, i32 %45)
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @XFS_DIR2_DATA_SPACE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %40
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = call i64 @XFS_FSB_TO_B(%struct.xfs_mount* %52, i64 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %60 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %58, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %51
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %67 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %70 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %73 = load i32, i32* @XFS_ILOG_CORE, align 4
  %74 = call i32 @xfs_trans_log_inode(i32 %71, %struct.xfs_inode* %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %51
  br label %76

76:                                               ; preds = %75, %40
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %38
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @trace_xfs_dir2_grow_inode(%struct.xfs_da_args*, i32) #1

declare dso_local i64 @XFS_B_TO_FSBT(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_da_grow_inode_int(%struct.xfs_da_args*, i64*, i32) #1

declare dso_local i32 @xfs_dir2_da_to_db(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @XFS_FSB_TO_B(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_trans_log_inode(i32, %struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
