; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_freeinsert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_freeinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir2_data_hdr = type { i64 }
%struct.xfs_dir2_data_free = type { i32, i32 }
%struct.xfs_dir2_data_unused = type { i32 }

@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_BLOCK_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_dir2_data_free* @xfs_dir2_data_freeinsert(%struct.xfs_dir2_data_hdr* %0, %struct.xfs_dir2_data_free* %1, %struct.xfs_dir2_data_unused* %2, i32* %3) #0 {
  %5 = alloca %struct.xfs_dir2_data_free*, align 8
  %6 = alloca %struct.xfs_dir2_data_hdr*, align 8
  %7 = alloca %struct.xfs_dir2_data_free*, align 8
  %8 = alloca %struct.xfs_dir2_data_unused*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_dir2_data_free, align 4
  store %struct.xfs_dir2_data_hdr* %0, %struct.xfs_dir2_data_hdr** %6, align 8
  store %struct.xfs_dir2_data_free* %1, %struct.xfs_dir2_data_free** %7, align 8
  store %struct.xfs_dir2_data_unused* %2, %struct.xfs_dir2_data_unused** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %12 = getelementptr inbounds %struct.xfs_dir2_data_hdr, %struct.xfs_dir2_data_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @XFS_DIR2_DATA_MAGIC, align 4
  %15 = call i64 @cpu_to_be32(i32 %14)
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %4
  %18 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %19 = getelementptr inbounds %struct.xfs_dir2_data_hdr, %struct.xfs_dir2_data_hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @XFS_DIR2_BLOCK_MAGIC, align 4
  %22 = call i64 @cpu_to_be32(i32 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.xfs_dir2_data_hdr, %struct.xfs_dir2_data_hdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @XFS_DIR3_DATA_MAGIC, align 4
  %29 = call i64 @cpu_to_be32(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %33 = getelementptr inbounds %struct.xfs_dir2_data_hdr, %struct.xfs_dir2_data_hdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @XFS_DIR3_BLOCK_MAGIC, align 4
  %36 = call i64 @cpu_to_be32(i32 %35)
  %37 = icmp eq i64 %34, %36
  br label %38

38:                                               ; preds = %31, %24, %17, %4
  %39 = phi i1 [ true, %24 ], [ true, %17 ], [ true, %4 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %8, align 8
  %43 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %10, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %8, align 8
  %47 = bitcast %struct.xfs_dir2_data_unused* %46 to i8*
  %48 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %49 = bitcast %struct.xfs_dir2_data_hdr* %48 to i8*
  %50 = ptrtoint i8* %47 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @cpu_to_be16(i32 %53)
  %55 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %10, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @be16_to_cpu(i32 %57)
  %59 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %60 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %59, i64 0
  %61 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @be16_to_cpu(i32 %62)
  %64 = icmp sgt i64 %58, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %38
  %66 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %67 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %66, i64 2
  %68 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %69 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %68, i64 1
  %70 = bitcast %struct.xfs_dir2_data_free* %67 to i8*
  %71 = bitcast %struct.xfs_dir2_data_free* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 8, i1 false)
  %72 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %73 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %72, i64 1
  %74 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %75 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %74, i64 0
  %76 = bitcast %struct.xfs_dir2_data_free* %73 to i8*
  %77 = bitcast %struct.xfs_dir2_data_free* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 8, i1 false)
  %78 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %79 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %78, i64 0
  %80 = bitcast %struct.xfs_dir2_data_free* %79 to i8*
  %81 = bitcast %struct.xfs_dir2_data_free* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 8, i1 false)
  %82 = load i32*, i32** %9, align 8
  store i32 1, i32* %82, align 4
  %83 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %84 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %83, i64 0
  store %struct.xfs_dir2_data_free* %84, %struct.xfs_dir2_data_free** %5, align 8
  br label %128

85:                                               ; preds = %38
  %86 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @be16_to_cpu(i32 %87)
  %89 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %90 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %89, i64 1
  %91 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @be16_to_cpu(i32 %92)
  %94 = icmp sgt i64 %88, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %85
  %96 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %97 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %96, i64 2
  %98 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %99 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %98, i64 1
  %100 = bitcast %struct.xfs_dir2_data_free* %97 to i8*
  %101 = bitcast %struct.xfs_dir2_data_free* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 8, i1 false)
  %102 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %103 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %102, i64 1
  %104 = bitcast %struct.xfs_dir2_data_free* %103 to i8*
  %105 = bitcast %struct.xfs_dir2_data_free* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 8, i1 false)
  %106 = load i32*, i32** %9, align 8
  store i32 1, i32* %106, align 4
  %107 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %108 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %107, i64 1
  store %struct.xfs_dir2_data_free* %108, %struct.xfs_dir2_data_free** %5, align 8
  br label %128

109:                                              ; preds = %85
  %110 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %10, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @be16_to_cpu(i32 %111)
  %113 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %114 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %113, i64 2
  %115 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @be16_to_cpu(i32 %116)
  %118 = icmp sgt i64 %112, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %109
  %120 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %121 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %120, i64 2
  %122 = bitcast %struct.xfs_dir2_data_free* %121 to i8*
  %123 = bitcast %struct.xfs_dir2_data_free* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 8, i1 false)
  %124 = load i32*, i32** %9, align 8
  store i32 1, i32* %124, align 4
  %125 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %126 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %125, i64 2
  store %struct.xfs_dir2_data_free* %126, %struct.xfs_dir2_data_free** %5, align 8
  br label %128

127:                                              ; preds = %109
  store %struct.xfs_dir2_data_free* null, %struct.xfs_dir2_data_free** %5, align 8
  br label %128

128:                                              ; preds = %127, %119, %95, %65
  %129 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %5, align 8
  ret %struct.xfs_dir2_data_free* %129
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
