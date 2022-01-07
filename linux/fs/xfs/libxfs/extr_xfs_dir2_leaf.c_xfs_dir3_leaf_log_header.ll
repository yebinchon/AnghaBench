; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_log_header.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_log_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.xfs_buf = type { %struct.xfs_dir2_leaf* }
%struct.xfs_dir2_leaf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@XFS_DIR2_LEAF1_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_LEAF1_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_LEAFN_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir3_leaf_log_header(%struct.xfs_da_args* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_dir2_leaf*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %4, align 8
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %6, i32 0, i32 0
  %8 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %7, align 8
  store %struct.xfs_dir2_leaf* %8, %struct.xfs_dir2_leaf** %5, align 8
  %9 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %5, align 8
  %10 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @XFS_DIR2_LEAF1_MAGIC, align 4
  %15 = call i64 @cpu_to_be16(i32 %14)
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %44, label %17

17:                                               ; preds = %2
  %18 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %5, align 8
  %19 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @XFS_DIR3_LEAF1_MAGIC, align 4
  %24 = call i64 @cpu_to_be16(i32 %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %44, label %26

26:                                               ; preds = %17
  %27 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @XFS_DIR2_LEAFN_MAGIC, align 4
  %33 = call i64 @cpu_to_be16(i32 %32)
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %5, align 8
  %37 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @XFS_DIR3_LEAFN_MAGIC, align 4
  %42 = call i64 @cpu_to_be16(i32 %41)
  %43 = icmp eq i64 %40, %42
  br label %44

44:                                               ; preds = %35, %26, %17, %2
  %45 = phi i1 [ true, %26 ], [ true, %17 ], [ true, %2 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %49 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %52 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %52, i32 0, i32 0
  %54 = bitcast %struct.TYPE_6__* %53 to i8*
  %55 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %5, align 8
  %56 = bitcast %struct.xfs_dir2_leaf* %55 to i8*
  %57 = ptrtoint i8* %54 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %62 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call i32 @xfs_trans_log_buf(i32 %50, %struct.xfs_buf* %51, i32 %60, i64 %68)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.xfs_buf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
