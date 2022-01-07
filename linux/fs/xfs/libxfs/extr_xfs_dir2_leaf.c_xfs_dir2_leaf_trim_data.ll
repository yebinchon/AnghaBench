; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_trim_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_trim_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__*, i32*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.xfs_dir2_data_free* (%struct.xfs_dir2_data_hdr*)* }
%struct.xfs_dir2_data_free = type { i32 }
%struct.xfs_dir2_data_hdr = type { i64 }
%struct.xfs_buf = type { %struct.xfs_dir2_data_hdr* }
%struct.TYPE_17__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_DATA_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_trim_data(%struct.TYPE_18__* %0, %struct.xfs_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_dir2_data_hdr*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %10, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @xfs_dir2_db_to_da(%struct.TYPE_14__* %25, i32 %26)
  %28 = call i32 @xfs_dir3_data_read(i32* %21, %struct.TYPE_16__* %22, i32 %27, i32 -1, %struct.xfs_buf** %9)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %87

33:                                               ; preds = %3
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %35 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %34, i32 0, i32 0
  %36 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %35, align 8
  store %struct.xfs_dir2_data_hdr* %36, %struct.xfs_dir2_data_hdr** %12, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %12, align 8
  %41 = call %struct.TYPE_17__* @xfs_dir2_leaf_tail_p(%struct.TYPE_14__* %39, %struct.xfs_dir2_data_hdr* %40)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %13, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %45 = call i32 @xfs_dir2_shrink_inode(%struct.TYPE_18__* %42, i32 %43, %struct.xfs_buf* %44)
  store i32 %45, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %33
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load i32*, i32** %14, align 8
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %56 = call i32 @xfs_trans_brelse(i32* %54, %struct.xfs_buf* %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %87

58:                                               ; preds = %33
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %60 = call i32* @xfs_dir2_leaf_bests_p(%struct.TYPE_17__* %59)
  store i32* %60, i32** %8, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = call i32 @be32_add_cpu(i32* %62, i32 -1)
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be32_to_cpu(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memmove(i32* %65, i32* %67, i32 %74)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %78 = call i32 @xfs_dir3_leaf_log_tail(%struct.TYPE_18__* %76, %struct.xfs_buf* %77)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %80 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be32_to_cpu(i32 %83)
  %85 = sub nsw i32 %84, 1
  %86 = call i32 @xfs_dir3_leaf_log_bests(%struct.TYPE_18__* %79, %struct.xfs_buf* %80, i32 0, i32 %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %58, %47, %31
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @xfs_dir3_data_read(i32*, %struct.TYPE_16__*, i32, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir2_db_to_da(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_17__* @xfs_dir2_leaf_tail_p(%struct.TYPE_14__*, %struct.xfs_dir2_data_hdr*) #1

declare dso_local i32 @xfs_dir2_shrink_inode(%struct.TYPE_18__*, i32, %struct.xfs_buf*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_brelse(i32*, %struct.xfs_buf*) #1

declare dso_local i32* @xfs_dir2_leaf_bests_p(%struct.TYPE_17__*) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_tail(%struct.TYPE_18__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_log_bests(%struct.TYPE_18__*, %struct.xfs_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
