; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_split_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_split_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32, i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32, i32, %struct.ocfs2_extent_rec* }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_insert_type = type { i32, i32, i32, i32 }

@APPEND_NONE = common dso_local global i32 0, align 4
@CONTIG_NONE = common dso_local global i32 0, align 4
@SPLIT_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, i32, %struct.ocfs2_alloc_context*)* @ocfs2_split_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_split_tree(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, i32 %3, i32 %4, %struct.ocfs2_alloc_context* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_alloc_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_extent_block*, align 8
  %18 = alloca %struct.ocfs2_extent_list*, align 8
  %19 = alloca %struct.ocfs2_extent_list*, align 8
  %20 = alloca %struct.ocfs2_extent_rec, align 4
  %21 = alloca %struct.ocfs2_extent_rec*, align 8
  %22 = alloca %struct.ocfs2_insert_type, align 4
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  %23 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %24 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %23)
  store %struct.ocfs2_extent_list* %24, %struct.ocfs2_extent_list** %19, align 8
  %25 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %26 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %25, i32 0, i32 2
  %27 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %27, i64 %29
  store %struct.ocfs2_extent_rec* %30, %struct.ocfs2_extent_rec** %21, align 8
  %31 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %32 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ocfs2_metadata_cache_get_super(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %21, align 8
  %37 = call i32 @ocfs2_make_right_split_rec(i32 %34, %struct.ocfs2_extent_rec* %20, i32 %35, %struct.ocfs2_extent_rec* %36)
  %38 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %39 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %6
  %44 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %45 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %48 = call i32 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree* %47)
  %49 = call i32 @ocfs2_read_extent_block(i32 %46, i32 %48, %struct.buffer_head** %16)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %122

55:                                               ; preds = %43
  %56 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %59, %struct.ocfs2_extent_block** %17, align 8
  %60 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %61 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %60, i32 0, i32 0
  store %struct.ocfs2_extent_list* %61, %struct.ocfs2_extent_list** %18, align 8
  br label %65

62:                                               ; preds = %6
  %63 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %64 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %63)
  store %struct.ocfs2_extent_list* %64, %struct.ocfs2_extent_list** %18, align 8
  br label %65

65:                                               ; preds = %62, %55
  %66 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %67 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %70 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ocfs2_extend_meta_needed(i32 %71)
  %73 = add nsw i32 %68, %72
  store i32 %73, i32* %15, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @ocfs2_extend_trans(i32* %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %122

82:                                               ; preds = %65
  %83 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %84 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @le16_to_cpu(i32 %85)
  %87 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %88 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @le16_to_cpu(i32 %89)
  %91 = icmp eq i64 %86, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %82
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %95 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %96 = call i32 @ocfs2_grow_tree(i32* %93, %struct.ocfs2_extent_tree* %94, i32* %14, %struct.buffer_head** %16, %struct.ocfs2_alloc_context* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %122

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %82
  %104 = call i32 @memset(%struct.ocfs2_insert_type* %22, i32 0, i32 16)
  %105 = load i32, i32* @APPEND_NONE, align 4
  %106 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %22, i32 0, i32 3
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @CONTIG_NONE, align 4
  %108 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %22, i32 0, i32 2
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @SPLIT_RIGHT, align 4
  %110 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %22, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %14, align 4
  %112 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %22, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %115 = call i32 @ocfs2_do_insert_extent(i32* %113, %struct.ocfs2_extent_tree* %114, %struct.ocfs2_extent_rec* %20, %struct.ocfs2_insert_type* %22)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %103
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @mlog_errno(i32 %119)
  br label %121

121:                                              ; preds = %118, %103
  br label %122

122:                                              ; preds = %121, %99, %79, %52
  %123 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %124 = call i32 @brelse(%struct.buffer_head* %123)
  %125 = load i32, i32* %13, align 4
  ret i32 %125
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_make_right_split_rec(i32, %struct.ocfs2_extent_rec*, i32, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extend_meta_needed(i32) #1

declare dso_local i32 @ocfs2_extend_trans(i32*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_grow_tree(i32*, %struct.ocfs2_extent_tree*, i32*, %struct.buffer_head**, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @memset(%struct.ocfs2_insert_type*, i32, i32) #1

declare dso_local i32 @ocfs2_do_insert_extent(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_insert_type*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
