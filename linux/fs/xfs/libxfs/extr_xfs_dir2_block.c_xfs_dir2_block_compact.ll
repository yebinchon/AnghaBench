; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_compact.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_dir2_data_hdr = type { i32 }
%struct.xfs_dir2_block_tail = type { i64, i64 }
%struct.xfs_dir2_leaf_entry = type { i64 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_da_args*, %struct.xfs_buf*, %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_leaf_entry*, i32*, i32*, i32*)* @xfs_dir2_block_compact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir2_block_compact(%struct.xfs_da_args* %0, %struct.xfs_buf* %1, %struct.xfs_dir2_data_hdr* %2, %struct.xfs_dir2_block_tail* %3, %struct.xfs_dir2_leaf_entry* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.xfs_da_args*, align 8
  %10 = alloca %struct.xfs_buf*, align 8
  %11 = alloca %struct.xfs_dir2_data_hdr*, align 8
  %12 = alloca %struct.xfs_dir2_block_tail*, align 8
  %13 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %9, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %10, align 8
  store %struct.xfs_dir2_data_hdr* %2, %struct.xfs_dir2_data_hdr** %11, align 8
  store %struct.xfs_dir2_block_tail* %3, %struct.xfs_dir2_block_tail** %12, align 8
  store %struct.xfs_dir2_leaf_entry* %4, %struct.xfs_dir2_leaf_entry** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_block_tail** %12, align 8
  %22 = getelementptr inbounds %struct.xfs_dir2_block_tail, %struct.xfs_dir2_block_tail* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @be32_to_cpu(i64 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %18, align 4
  store i32 %25, i32* %17, align 4
  %26 = load i32*, i32** %15, align 8
  store i32 -1, i32* %26, align 4
  store i32 -1, i32* %20, align 4
  br label %27

27:                                               ; preds = %72, %8
  %28 = load i32, i32* %17, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %27
  %31 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %32 = load i32, i32* %17, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %31, i64 %33
  %35 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %38 = call i64 @cpu_to_be32(i32 %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %30
  %41 = load i32, i32* %20, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %18, align 4
  store i32 %44, i32* %20, align 4
  br label %53

45:                                               ; preds = %40
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %18, align 4
  %51 = load i32*, i32** %15, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %45
  br label %72

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %59, i64 %61
  %63 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %63, i64 %65
  %67 = bitcast %struct.xfs_dir2_leaf_entry* %62 to i8*
  %68 = bitcast %struct.xfs_dir2_leaf_entry* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  br label %69

69:                                               ; preds = %58, %54
  %70 = load i32, i32* %18, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %69, %52
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %17, align 4
  br label %27

75:                                               ; preds = %27
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, 1
  %78 = load %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_block_tail** %12, align 8
  %79 = getelementptr inbounds %struct.xfs_dir2_block_tail, %struct.xfs_dir2_block_tail* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @be32_to_cpu(i64 %80)
  %82 = sub nsw i32 %81, 1
  %83 = sub nsw i32 %77, %82
  %84 = load i32*, i32** %16, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_block_tail** %12, align 8
  %86 = getelementptr inbounds %struct.xfs_dir2_block_tail, %struct.xfs_dir2_block_tail* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @be32_to_cpu(i64 %87)
  %89 = sub nsw i32 %88, 1
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, %89
  store i32 %92, i32* %90, align 4
  %93 = load %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_block_tail** %12, align 8
  %94 = getelementptr inbounds %struct.xfs_dir2_block_tail, %struct.xfs_dir2_block_tail* %93, i32 0, i32 1
  %95 = load %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_block_tail** %12, align 8
  %96 = getelementptr inbounds %struct.xfs_dir2_block_tail, %struct.xfs_dir2_block_tail* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @be32_to_cpu(i64 %97)
  %99 = sub nsw i32 %98, 1
  %100 = sub nsw i32 0, %99
  %101 = call i32 @be32_add_cpu(i64* %94, i32 %100)
  %102 = load %struct.xfs_da_args*, %struct.xfs_da_args** %9, align 8
  %103 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %104 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %105 = bitcast %struct.xfs_dir2_leaf_entry* %104 to i8*
  %106 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %11, align 8
  %107 = bitcast %struct.xfs_dir2_data_hdr* %106 to i8*
  %108 = ptrtoint i8* %105 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = load %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_block_tail** %12, align 8
  %113 = getelementptr inbounds %struct.xfs_dir2_block_tail, %struct.xfs_dir2_block_tail* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @be32_to_cpu(i64 %114)
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 8
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @xfs_dir2_data_make_free(%struct.xfs_da_args* %102, %struct.xfs_buf* %103, i32 %111, i32 %119, i32* %120, i32* %19)
  %122 = call i64 @cpu_to_be32(i32 1)
  %123 = load %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_block_tail** %12, align 8
  %124 = getelementptr inbounds %struct.xfs_dir2_block_tail, %struct.xfs_dir2_block_tail* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %75
  %128 = load %struct.xfs_da_args*, %struct.xfs_da_args** %9, align 8
  %129 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %11, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = call i32 @xfs_dir2_data_freescan(i32 %130, %struct.xfs_dir2_data_hdr* %131, i32* %132)
  br label %134

134:                                              ; preds = %127, %75
  ret void
}

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i64 @cpu_to_be32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @be32_add_cpu(i64*, i32) #1

declare dso_local i32 @xfs_dir2_data_make_free(%struct.xfs_da_args*, %struct.xfs_buf*, i32, i32, i32*, i32*) #1

declare dso_local i32 @xfs_dir2_data_freescan(i32, %struct.xfs_dir2_data_hdr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
