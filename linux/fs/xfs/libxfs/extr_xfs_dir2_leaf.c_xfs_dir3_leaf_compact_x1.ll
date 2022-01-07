; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_compact_x1.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_compact_x1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir3_icleaf_hdr = type { i32, i32 }
%struct.xfs_dir2_leaf_entry = type { i64 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir3_leaf_compact_x1(%struct.xfs_dir3_icleaf_hdr* %0, %struct.xfs_dir2_leaf_entry* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.xfs_dir3_icleaf_hdr*, align 8
  %9 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.xfs_dir3_icleaf_hdr* %0, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  store %struct.xfs_dir2_leaf_entry* %1, %struct.xfs_dir2_leaf_entry** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %20, align 4
  %22 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %23 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %31 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %9, align 8
  %32 = load i32, i32* %17, align 4
  %33 = call i32 @xfs_dir3_leaf_find_stale(%struct.xfs_dir3_icleaf_hdr* %30, %struct.xfs_dir2_leaf_entry* %31, i32 %32, i32* %19, i32* %16)
  %34 = load i32, i32* %19, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %7
  %37 = load i32, i32* %16, align 4
  %38 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %39 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %19, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = sub nsw i32 %46, %47
  %49 = icmp sle i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %36
  %51 = load i32, i32* %19, align 4
  store i32 %51, i32* %18, align 4
  br label %54

52:                                               ; preds = %42, %7
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %52, %50
  store i32 0, i32* %21, align 4
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %113, %54
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %58 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %116

61:                                               ; preds = %55
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %21, align 4
  store i32 %66, i32* %20, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %9, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %72, i64 %74
  %76 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %79 = call i64 @cpu_to_be32(i32 %78)
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %71
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %21, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %21, align 4
  %87 = load i32*, i32** %13, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %81
  br label %113

89:                                               ; preds = %71, %67
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* %21, align 4
  store i32 %94, i32* %16, align 4
  store i32 %94, i32* %19, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %21, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %9, align 8
  %101 = load i32, i32* %21, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %100, i64 %102
  %104 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %9, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %104, i64 %106
  %108 = bitcast %struct.xfs_dir2_leaf_entry* %103 to i8*
  %109 = bitcast %struct.xfs_dir2_leaf_entry* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 8, i1 false)
  br label %110

110:                                              ; preds = %99, %95
  %111 = load i32, i32* %21, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %21, align 4
  br label %113

113:                                              ; preds = %110, %88
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %55

116:                                              ; preds = %55
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %21, align 4
  %119 = icmp sgt i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @ASSERT(i32 %120)
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i32, i32* %21, align 4
  store i32 %126, i32* %20, align 4
  br label %127

127:                                              ; preds = %125, %116
  %128 = load i32, i32* %20, align 4
  %129 = load i32*, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %21, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %134 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %138 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %137, i32 0, i32 0
  store i32 1, i32* %138, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %20, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %127
  store i32 -1, i32* %19, align 4
  br label %147

143:                                              ; preds = %127
  %144 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %145 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %143, %142
  %148 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %149 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %150, 1
  %152 = load i32*, i32** %14, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %19, align 4
  %154 = load i32*, i32** %11, align 8
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32*, i32** %12, align 8
  store i32 %155, i32* %156, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir3_leaf_find_stale(%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf_entry*, i32, i32*, i32*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
