; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_get_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.xfs_trans*, %struct.xfs_inode* }
%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_buf = type { i32 }

@XFS_DIR2_LEAF1_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_LEAF_OFFSET = common dso_local global i32 0, align 4
@XFS_DIR2_FREE_OFFSET = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir3_leaf_get_buf(%struct.TYPE_5__* %0, i64 %1, %struct.xfs_buf** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfs_buf**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_inode*, align 8
  %11 = alloca %struct.xfs_trans*, align 8
  %12 = alloca %struct.xfs_mount*, align 8
  %13 = alloca %struct.xfs_buf*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.xfs_buf** %2, %struct.xfs_buf*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %16, align 8
  store %struct.xfs_inode* %17, %struct.xfs_inode** %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.xfs_trans*, %struct.xfs_trans** %19, align 8
  store %struct.xfs_trans* %20, %struct.xfs_trans** %11, align 8
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %10, align 8
  %22 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %21, i32 0, i32 1
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %22, align 8
  store %struct.xfs_mount* %23, %struct.xfs_mount** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @XFS_DIR2_LEAF1_MAGIC, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @XFS_DIR2_LEAFN_MAGIC, align 4
  %30 = icmp eq i32 %28, %29
  br label %31

31:                                               ; preds = %27, %4
  %32 = phi i1 [ true, %4 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @XFS_DIR2_LEAF_OFFSET, align 4
  %40 = call i64 @xfs_dir2_byte_to_db(i32 %38, i32 %39)
  %41 = icmp sge i64 %35, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @XFS_DIR2_FREE_OFFSET, align 4
  %48 = call i64 @xfs_dir2_byte_to_db(i32 %46, i32 %47)
  %49 = icmp slt i64 %43, %48
  br label %50

50:                                               ; preds = %42, %31
  %51 = phi i1 [ false, %31 ], [ %49, %42 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %55 = load %struct.xfs_inode*, %struct.xfs_inode** %10, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @xfs_dir2_db_to_da(i32 %58, i64 %59)
  %61 = load i32, i32* @XFS_DATA_FORK, align 4
  %62 = call i32 @xfs_da_get_buf(%struct.xfs_trans* %54, %struct.xfs_inode* %55, i32 %60, i32 -1, %struct.xfs_buf** %13, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %5, align 4
  br label %89

67:                                               ; preds = %50
  %68 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %69 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %70 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %71 = load %struct.xfs_inode*, %struct.xfs_inode** %10, align 8
  %72 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @xfs_dir3_leaf_init(%struct.xfs_mount* %68, %struct.xfs_trans* %69, %struct.xfs_buf* %70, i32 %73, i32 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %78 = call i32 @xfs_dir3_leaf_log_header(%struct.TYPE_5__* %76, %struct.xfs_buf* %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @XFS_DIR2_LEAF1_MAGIC, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %67
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %85 = call i32 @xfs_dir3_leaf_log_tail(%struct.TYPE_5__* %83, %struct.xfs_buf* %84)
  br label %86

86:                                               ; preds = %82, %67
  %87 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %88 = load %struct.xfs_buf**, %struct.xfs_buf*** %8, align 8
  store %struct.xfs_buf* %87, %struct.xfs_buf** %88, align 8
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %65
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @xfs_dir2_byte_to_db(i32, i32) #1

declare dso_local i32 @xfs_da_get_buf(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**, i32) #1

declare dso_local i32 @xfs_dir2_db_to_da(i32, i64) #1

declare dso_local i32 @xfs_dir3_leaf_init(%struct.xfs_mount*, %struct.xfs_trans*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_header(%struct.TYPE_5__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_log_tail(%struct.TYPE_5__*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
