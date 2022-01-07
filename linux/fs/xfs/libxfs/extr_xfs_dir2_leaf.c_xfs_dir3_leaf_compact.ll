; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_compact.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.xfs_inode* }
%struct.xfs_inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)*, %struct.xfs_dir2_leaf_entry* (i32*)* }
%struct.xfs_dir2_leaf_entry = type { i64 }
%struct.xfs_dir3_icleaf_hdr = type { i32, i32 }
%struct.xfs_buf = type { i32* }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir3_leaf_compact(%struct.TYPE_7__* %0, %struct.xfs_dir3_icleaf_hdr* %1, %struct.xfs_buf* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.xfs_dir3_icleaf_hdr*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %12 = alloca %struct.xfs_inode*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.xfs_dir3_icleaf_hdr* %1, %struct.xfs_dir3_icleaf_hdr** %5, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  store %struct.xfs_inode* %15, %struct.xfs_inode** %12, align 8
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %17 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %114

24:                                               ; preds = %3
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %26 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.xfs_dir2_leaf_entry* (i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)** %28, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call %struct.xfs_dir2_leaf_entry* %29(i32* %30)
  store %struct.xfs_dir2_leaf_entry* %31, %struct.xfs_dir2_leaf_entry** %11, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  br label %32

32:                                               ; preds = %72, %24
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %5, align 8
  %35 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %32
  %39 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %39, i64 %41
  %43 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %46 = call i64 @cpu_to_be32(i32 %45)
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %72

49:                                               ; preds = %38
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %53
  %59 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %59, i64 %61
  %63 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %63, i64 %65
  %67 = bitcast %struct.xfs_dir2_leaf_entry* %62 to i8*
  %68 = bitcast %struct.xfs_dir2_leaf_entry* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  br label %69

69:                                               ; preds = %58, %49
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %48
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %32

75:                                               ; preds = %32
  %76 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %5, align 8
  %77 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %79, %80
  %82 = icmp eq i32 %78, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @ASSERT(i32 %83)
  %85 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %5, align 8
  %86 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %5, align 8
  %89 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %5, align 8
  %93 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  %94 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %95 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)** %97, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %5, align 8
  %101 = call i32 %98(i32* %99, %struct.xfs_dir3_icleaf_hdr* %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %104 = call i32 @xfs_dir3_leaf_log_header(%struct.TYPE_7__* %102, %struct.xfs_buf* %103)
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %114

107:                                              ; preds = %75
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, 1
  %113 = call i32 @xfs_dir3_leaf_log_ents(%struct.TYPE_7__* %108, %struct.xfs_buf* %109, i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %23, %107, %75
  ret void
}

declare dso_local i64 @cpu_to_be32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_header(%struct.TYPE_7__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_log_ents(%struct.TYPE_7__*, %struct.xfs_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
