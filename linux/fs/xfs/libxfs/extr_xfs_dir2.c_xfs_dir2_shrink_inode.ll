; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir2_shrink_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir2_shrink_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { %struct.TYPE_6__*, %struct.xfs_trans*, %struct.xfs_inode* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_5__, %struct.xfs_mount* }
%struct.TYPE_5__ = type { i64 }
%struct.xfs_mount = type { i32 }
%struct.xfs_buf = type { i32 }

@XFS_DIR2_LEAF_OFFSET = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_shrink_inode(%struct.xfs_da_args* %0, i64 %1, %struct.xfs_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_da_args*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_mount*, align 8
  %14 = alloca %struct.xfs_trans*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %7, align 8
  %15 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @trace_xfs_dir2_shrink_inode(%struct.xfs_da_args* %15, i64 %16)
  %18 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %19 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %18, i32 0, i32 2
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %19, align 8
  store %struct.xfs_inode* %20, %struct.xfs_inode** %11, align 8
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %22 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %21, i32 0, i32 1
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %22, align 8
  store %struct.xfs_mount* %23, %struct.xfs_mount** %13, align 8
  %24 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %25 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %24, i32 0, i32 1
  %26 = load %struct.xfs_trans*, %struct.xfs_trans** %25, align 8
  store %struct.xfs_trans* %26, %struct.xfs_trans** %14, align 8
  %27 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @xfs_dir2_db_to_da(%struct.TYPE_6__* %29, i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %33 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @xfs_bunmapi(%struct.xfs_trans* %32, %struct.xfs_inode* %33, i64 %34, i32 %39, i32 0, i32 0, i32* %10)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %4, align 4
  br label %110

45:                                               ; preds = %3
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %49 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %50 = call i32 @xfs_trans_binval(%struct.xfs_trans* %48, %struct.xfs_buf* %49)
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* @XFS_DIR2_LEAF_OFFSET, align 4
  %56 = call i64 @xfs_dir2_byte_to_db(%struct.TYPE_6__* %54, i32 %55)
  %57 = icmp sge i64 %51, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %110

59:                                               ; preds = %45
  %60 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %61 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %65 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, 1
  %69 = call i64 @xfs_dir2_db_off_to_byte(%struct.TYPE_6__* %66, i64 %68, i32 0)
  %70 = icmp sgt i64 %63, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %110

72:                                               ; preds = %59
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %8, align 8
  %74 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %75 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %76 = load i32, i32* @XFS_DATA_FORK, align 4
  %77 = call i32 @xfs_bmap_last_before(%struct.xfs_trans* %74, %struct.xfs_inode* %75, i64* %8, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %110

81:                                               ; preds = %72
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %84 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %82, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load i64, i64* %8, align 8
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @ASSERT(i32 %92)
  br label %99

94:                                               ; preds = %81
  %95 = load i64, i64* %8, align 8
  %96 = icmp sgt i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  br label %99

99:                                               ; preds = %94, %89
  %100 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i64 @XFS_FSB_TO_B(%struct.xfs_mount* %100, i64 %101)
  %103 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %104 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i64 %102, i64* %105, align 8
  %106 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %107 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %108 = load i32, i32* @XFS_ILOG_CORE, align 4
  %109 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %106, %struct.xfs_inode* %107, i32 %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %99, %79, %71, %58, %43
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @trace_xfs_dir2_shrink_inode(%struct.xfs_da_args*, i64) #1

declare dso_local i64 @xfs_dir2_db_to_da(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @xfs_bunmapi(%struct.xfs_trans*, %struct.xfs_inode*, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_binval(%struct.xfs_trans*, %struct.xfs_buf*) #1

declare dso_local i64 @xfs_dir2_byte_to_db(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @xfs_dir2_db_off_to_byte(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @xfs_bmap_last_before(%struct.xfs_trans*, %struct.xfs_inode*, i64*, i32) #1

declare dso_local i64 @XFS_FSB_TO_B(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
