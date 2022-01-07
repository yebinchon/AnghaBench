; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_log_ents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_log_ents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)* }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.xfs_dir2_leaf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.xfs_buf = type { %struct.xfs_dir2_leaf* }

@XFS_DIR2_LEAF1_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_LEAF1_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_LEAFN_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir3_leaf_log_ents(%struct.xfs_da_args* %0, %struct.xfs_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_da_args*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %10 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %11 = alloca %struct.xfs_dir2_leaf*, align 8
  %12 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %5, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 0
  %15 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %14, align 8
  store %struct.xfs_dir2_leaf* %15, %struct.xfs_dir2_leaf** %11, align 8
  %16 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %17 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @XFS_DIR2_LEAF1_MAGIC, align 4
  %22 = call i64 @cpu_to_be16(i32 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %51, label %24

24:                                               ; preds = %4
  %25 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %26 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @XFS_DIR3_LEAF1_MAGIC, align 4
  %31 = call i64 @cpu_to_be16(i32 %30)
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %51, label %33

33:                                               ; preds = %24
  %34 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %35 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @XFS_DIR2_LEAFN_MAGIC, align 4
  %40 = call i64 @cpu_to_be16(i32 %39)
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %44 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @XFS_DIR3_LEAFN_MAGIC, align 4
  %49 = call i64 @cpu_to_be16(i32 %48)
  %50 = icmp eq i64 %47, %49
  br label %51

51:                                               ; preds = %42, %33, %24, %4
  %52 = phi i1 [ true, %33 ], [ true, %24 ], [ true, %4 ], [ %50, %42 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %56 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)*, %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)** %60, align 8
  %62 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %63 = call %struct.xfs_dir2_leaf_entry* %61(%struct.xfs_dir2_leaf* %62)
  store %struct.xfs_dir2_leaf_entry* %63, %struct.xfs_dir2_leaf_entry** %12, align 8
  %64 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %12, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %64, i64 %66
  store %struct.xfs_dir2_leaf_entry* %67, %struct.xfs_dir2_leaf_entry** %9, align 8
  %68 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %12, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %68, i64 %70
  store %struct.xfs_dir2_leaf_entry* %71, %struct.xfs_dir2_leaf_entry** %10, align 8
  %72 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %73 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %76 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %9, align 8
  %77 = bitcast %struct.xfs_dir2_leaf_entry* %76 to i8*
  %78 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %79 = bitcast %struct.xfs_dir2_leaf* %78 to i8*
  %80 = ptrtoint i8* %77 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %10, align 8
  %85 = bitcast %struct.xfs_dir2_leaf_entry* %84 to i8*
  %86 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %87 = bitcast %struct.xfs_dir2_leaf* %86 to i8*
  %88 = ptrtoint i8* %85 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = add i64 %90, 4
  %92 = sub i64 %91, 1
  %93 = trunc i64 %92 to i32
  %94 = call i32 @xfs_trans_log_buf(i32 %74, %struct.xfs_buf* %75, i32 %83, i32 %93)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.xfs_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
