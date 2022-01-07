; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_log_unused.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_log_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32 }
%struct.xfs_buf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_BLOCK_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir2_data_log_unused(%struct.xfs_da_args* %0, %struct.xfs_buf* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.xfs_da_args*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %9 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @XFS_DIR2_DATA_MAGIC, align 4
  %15 = call i64 @cpu_to_be32(i32 %14)
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @XFS_DIR3_DATA_MAGIC, align 4
  %22 = call i64 @cpu_to_be32(i32 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @XFS_DIR2_BLOCK_MAGIC, align 4
  %29 = call i64 @cpu_to_be32(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @XFS_DIR3_BLOCK_MAGIC, align 4
  %36 = call i64 @cpu_to_be32(i32 %35)
  %37 = icmp eq i64 %34, %36
  br label %38

38:                                               ; preds = %31, %24, %17, %3
  %39 = phi i1 [ true, %24 ], [ true, %17 ], [ true, %3 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = bitcast %struct.TYPE_5__* %46 to i8*
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = bitcast %struct.TYPE_6__* %48 to i8*
  %50 = ptrtoint i8* %47 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = bitcast i32* %55 to i8*
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = bitcast %struct.TYPE_6__* %59 to i8*
  %61 = ptrtoint i8* %58 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @xfs_trans_log_buf(i32 %44, %struct.xfs_buf* %45, i32 %53, i32 %64)
  %66 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %67 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = call i64 @xfs_dir2_data_unused_tag_p(%struct.TYPE_5__* %70)
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = bitcast %struct.TYPE_6__* %73 to i8*
  %75 = ptrtoint i8* %72 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = call i64 @xfs_dir2_data_unused_tag_p(%struct.TYPE_5__* %79)
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = bitcast %struct.TYPE_6__* %82 to i8*
  %84 = ptrtoint i8* %81 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = add i64 %86, 4
  %88 = sub i64 %87, 1
  %89 = trunc i64 %88 to i32
  %90 = call i32 @xfs_trans_log_buf(i32 %68, %struct.xfs_buf* %69, i32 %78, i32 %89)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.xfs_buf*, i32, i32) #1

declare dso_local i64 @xfs_dir2_data_unused_tag_p(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
