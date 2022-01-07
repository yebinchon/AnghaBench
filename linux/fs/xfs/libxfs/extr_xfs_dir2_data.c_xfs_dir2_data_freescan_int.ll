; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_freescan_int.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_freescan_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_geometry = type { i32 }
%struct.xfs_dir_ops = type { i32 (i32)*, i32* (%struct.TYPE_7__*)*, i64 (%struct.xfs_dir2_data_hdr*)*, %struct.xfs_dir2_data_free* (%struct.xfs_dir2_data_hdr.0*)* }
%struct.TYPE_7__ = type { i32 }
%struct.xfs_dir2_data_hdr = type opaque
%struct.xfs_dir2_data_free = type { i32 }
%struct.xfs_dir2_data_hdr.0 = type opaque
%struct.xfs_dir2_data_hdr.1 = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_BLOCK_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FD_COUNT = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir2_data_freescan_int(%struct.xfs_da_geometry* %0, %struct.xfs_dir_ops* %1, %struct.xfs_dir2_data_hdr.1* %2, i32* %3) #0 {
  %5 = alloca %struct.xfs_da_geometry*, align 8
  %6 = alloca %struct.xfs_dir_ops*, align 8
  %7 = alloca %struct.xfs_dir2_data_hdr.1*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.xfs_dir2_data_free*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.xfs_da_geometry* %0, %struct.xfs_da_geometry** %5, align 8
  store %struct.xfs_dir_ops* %1, %struct.xfs_dir_ops** %6, align 8
  store %struct.xfs_dir2_data_hdr.1* %2, %struct.xfs_dir2_data_hdr.1** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.xfs_dir2_data_hdr.1*, %struct.xfs_dir2_data_hdr.1** %7, align 8
  %15 = getelementptr inbounds %struct.xfs_dir2_data_hdr.1, %struct.xfs_dir2_data_hdr.1* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @XFS_DIR2_DATA_MAGIC, align 4
  %18 = call i64 @cpu_to_be32(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %4
  %21 = load %struct.xfs_dir2_data_hdr.1*, %struct.xfs_dir2_data_hdr.1** %7, align 8
  %22 = getelementptr inbounds %struct.xfs_dir2_data_hdr.1, %struct.xfs_dir2_data_hdr.1* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @XFS_DIR3_DATA_MAGIC, align 4
  %25 = call i64 @cpu_to_be32(i32 %24)
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = load %struct.xfs_dir2_data_hdr.1*, %struct.xfs_dir2_data_hdr.1** %7, align 8
  %29 = getelementptr inbounds %struct.xfs_dir2_data_hdr.1, %struct.xfs_dir2_data_hdr.1* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @XFS_DIR2_BLOCK_MAGIC, align 4
  %32 = call i64 @cpu_to_be32(i32 %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.xfs_dir2_data_hdr.1*, %struct.xfs_dir2_data_hdr.1** %7, align 8
  %36 = getelementptr inbounds %struct.xfs_dir2_data_hdr.1, %struct.xfs_dir2_data_hdr.1* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @XFS_DIR3_BLOCK_MAGIC, align 4
  %39 = call i64 @cpu_to_be32(i32 %38)
  %40 = icmp eq i64 %37, %39
  br label %41

41:                                               ; preds = %34, %27, %20, %4
  %42 = phi i1 [ true, %27 ], [ true, %20 ], [ true, %4 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %6, align 8
  %46 = getelementptr inbounds %struct.xfs_dir_ops, %struct.xfs_dir_ops* %45, i32 0, i32 3
  %47 = load %struct.xfs_dir2_data_free* (%struct.xfs_dir2_data_hdr.0*)*, %struct.xfs_dir2_data_free* (%struct.xfs_dir2_data_hdr.0*)** %46, align 8
  %48 = load %struct.xfs_dir2_data_hdr.1*, %struct.xfs_dir2_data_hdr.1** %7, align 8
  %49 = bitcast %struct.xfs_dir2_data_hdr.1* %48 to %struct.xfs_dir2_data_hdr.0*
  %50 = call %struct.xfs_dir2_data_free* %47(%struct.xfs_dir2_data_hdr.0* %49)
  store %struct.xfs_dir2_data_free* %50, %struct.xfs_dir2_data_free** %11, align 8
  %51 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %11, align 8
  %52 = load i32, i32* @XFS_DIR2_DATA_FD_COUNT, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(%struct.xfs_dir2_data_free* %51, i32 0, i32 %55)
  %57 = load i32*, i32** %8, align 8
  store i32 1, i32* %57, align 4
  %58 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %6, align 8
  %59 = getelementptr inbounds %struct.xfs_dir_ops, %struct.xfs_dir_ops* %58, i32 0, i32 2
  %60 = load i64 (%struct.xfs_dir2_data_hdr*)*, i64 (%struct.xfs_dir2_data_hdr*)** %59, align 8
  %61 = load %struct.xfs_dir2_data_hdr.1*, %struct.xfs_dir2_data_hdr.1** %7, align 8
  %62 = bitcast %struct.xfs_dir2_data_hdr.1* %61 to %struct.xfs_dir2_data_hdr*
  %63 = call i64 %60(%struct.xfs_dir2_data_hdr* %62)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %13, align 8
  %65 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %5, align 8
  %66 = load %struct.xfs_dir2_data_hdr.1*, %struct.xfs_dir2_data_hdr.1** %7, align 8
  %67 = call i8* @xfs_dir3_data_endp(%struct.xfs_da_geometry* %65, %struct.xfs_dir2_data_hdr.1* %66)
  store i8* %67, i8** %12, align 8
  br label %68

68:                                               ; preds = %140, %41
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = icmp ult i8* %69, %70
  br i1 %71, label %72, label %141

72:                                               ; preds = %68
  %73 = load i8*, i8** %13, align 8
  %74 = bitcast i8* %73 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %10, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @be16_to_cpu(i32 %77)
  %79 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %72
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = bitcast %struct.TYPE_6__* %82 to i8*
  %84 = load %struct.xfs_dir2_data_hdr.1*, %struct.xfs_dir2_data_hdr.1** %7, align 8
  %85 = bitcast %struct.xfs_dir2_data_hdr.1* %84 to i8*
  %86 = ptrtoint i8* %83 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = call i32* @xfs_dir2_data_unused_tag_p(%struct.TYPE_6__* %89)
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be16_to_cpu(i32 %91)
  %93 = sext i32 %92 to i64
  %94 = icmp eq i64 %88, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = load %struct.xfs_dir2_data_hdr.1*, %struct.xfs_dir2_data_hdr.1** %7, align 8
  %98 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %11, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @xfs_dir2_data_freeinsert(%struct.xfs_dir2_data_hdr.1* %97, %struct.xfs_dir2_data_free* %98, %struct.TYPE_6__* %99, i32* %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be16_to_cpu(i32 %104)
  %106 = load i8*, i8** %13, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %13, align 8
  br label %140

109:                                              ; preds = %72
  %110 = load i8*, i8** %13, align 8
  %111 = bitcast i8* %110 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %9, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %113 = bitcast %struct.TYPE_7__* %112 to i8*
  %114 = load %struct.xfs_dir2_data_hdr.1*, %struct.xfs_dir2_data_hdr.1** %7, align 8
  %115 = bitcast %struct.xfs_dir2_data_hdr.1* %114 to i8*
  %116 = ptrtoint i8* %113 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %6, align 8
  %120 = getelementptr inbounds %struct.xfs_dir_ops, %struct.xfs_dir_ops* %119, i32 0, i32 1
  %121 = load i32* (%struct.TYPE_7__*)*, i32* (%struct.TYPE_7__*)** %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %123 = call i32* %121(%struct.TYPE_7__* %122)
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @be16_to_cpu(i32 %124)
  %126 = sext i32 %125 to i64
  %127 = icmp eq i64 %118, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @ASSERT(i32 %128)
  %130 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %6, align 8
  %131 = getelementptr inbounds %struct.xfs_dir_ops, %struct.xfs_dir_ops* %130, i32 0, i32 0
  %132 = load i32 (i32)*, i32 (i32)** %131, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 %132(i32 %135)
  %137 = load i8*, i8** %13, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %13, align 8
  br label %140

140:                                              ; preds = %109, %81
  br label %68

141:                                              ; preds = %68
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @memset(%struct.xfs_dir2_data_free*, i32, i32) #1

declare dso_local i8* @xfs_dir3_data_endp(%struct.xfs_da_geometry*, %struct.xfs_dir2_data_hdr.1*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32* @xfs_dir2_data_unused_tag_p(%struct.TYPE_6__*) #1

declare dso_local i32 @xfs_dir2_data_freeinsert(%struct.xfs_dir2_data_hdr.1*, %struct.xfs_dir2_data_free*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
