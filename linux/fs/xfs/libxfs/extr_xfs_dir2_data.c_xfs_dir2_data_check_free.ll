; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_check_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_check_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir2_data_hdr = type { i64 }
%struct.xfs_dir2_data_unused = type { i32, i32 }

@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_BLOCK_MAGIC = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32* null, align 8
@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_unused*, i32, i32)* @xfs_dir2_data_check_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_dir2_data_check_free(%struct.xfs_dir2_data_hdr* %0, %struct.xfs_dir2_data_unused* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xfs_dir2_data_hdr*, align 8
  %7 = alloca %struct.xfs_dir2_data_unused*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_dir2_data_hdr* %0, %struct.xfs_dir2_data_hdr** %6, align 8
  store %struct.xfs_dir2_data_unused* %1, %struct.xfs_dir2_data_unused** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %11 = getelementptr inbounds %struct.xfs_dir2_data_hdr, %struct.xfs_dir2_data_hdr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @XFS_DIR2_DATA_MAGIC, align 4
  %14 = call i64 @cpu_to_be32(i32 %13)
  %15 = icmp ne i64 %12, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %4
  %17 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.xfs_dir2_data_hdr, %struct.xfs_dir2_data_hdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @XFS_DIR3_DATA_MAGIC, align 4
  %21 = call i64 @cpu_to_be32(i32 %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.xfs_dir2_data_hdr, %struct.xfs_dir2_data_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @XFS_DIR2_BLOCK_MAGIC, align 4
  %28 = call i64 @cpu_to_be32(i32 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.xfs_dir2_data_hdr, %struct.xfs_dir2_data_hdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @XFS_DIR3_BLOCK_MAGIC, align 4
  %35 = call i64 @cpu_to_be32(i32 %34)
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32*, i32** @__this_address, align 8
  store i32* %38, i32** %5, align 8
  br label %99

39:                                               ; preds = %30, %23, %16, %4
  %40 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %7, align 8
  %41 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be16_to_cpu(i32 %42)
  %44 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32*, i32** @__this_address, align 8
  store i32* %47, i32** %5, align 8
  br label %99

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %7, align 8
  %52 = bitcast %struct.xfs_dir2_data_unused* %51 to i8*
  %53 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %54 = bitcast %struct.xfs_dir2_data_hdr* %53 to i8*
  %55 = ptrtoint i8* %52 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = icmp slt i64 %50, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32*, i32** @__this_address, align 8
  store i32* %60, i32** %5, align 8
  br label %99

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %7, align 8
  %67 = bitcast %struct.xfs_dir2_data_unused* %66 to i8*
  %68 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %7, align 8
  %69 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be16_to_cpu(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %67, i64 %72
  %74 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %75 = bitcast %struct.xfs_dir2_data_hdr* %74 to i8*
  %76 = ptrtoint i8* %73 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = icmp sgt i64 %65, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %61
  %81 = load i32*, i32** @__this_address, align 8
  store i32* %81, i32** %5, align 8
  br label %99

82:                                               ; preds = %61
  %83 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %7, align 8
  %84 = bitcast %struct.xfs_dir2_data_unused* %83 to i8*
  %85 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %86 = bitcast %struct.xfs_dir2_data_hdr* %85 to i8*
  %87 = ptrtoint i8* %84 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %7, align 8
  %91 = call i32* @xfs_dir2_data_unused_tag_p(%struct.xfs_dir2_data_unused* %90)
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be16_to_cpu(i32 %92)
  %94 = sext i32 %93 to i64
  %95 = icmp ne i64 %89, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i32*, i32** @__this_address, align 8
  store i32* %97, i32** %5, align 8
  br label %99

98:                                               ; preds = %82
  store i32* null, i32** %5, align 8
  br label %99

99:                                               ; preds = %98, %96, %80, %59, %46, %37
  %100 = load i32*, i32** %5, align 8
  ret i32* %100
}

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32* @xfs_dir2_data_unused_tag_p(%struct.xfs_dir2_data_unused*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
