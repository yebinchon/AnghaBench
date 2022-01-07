; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_grow_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_grow_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32, %struct.ocfs2_extent_list* }
%struct.ocfs2_extent_list = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, i32*, %struct.buffer_head**, %struct.ocfs2_alloc_context*)* @ocfs2_grow_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_grow_tree(i32* %0, %struct.ocfs2_extent_tree* %1, i32* %2, %struct.buffer_head** %3, %struct.ocfs2_alloc_context* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_extent_list*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %10, align 8
  %16 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %17 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %16, i32 0, i32 1
  %18 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  store %struct.ocfs2_extent_list* %18, %struct.ocfs2_extent_list** %13, align 8
  %19 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %14, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %23 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %24 = icmp eq %struct.ocfs2_alloc_context* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %27 = call i64 @ocfs2_is_dealloc_empty(%struct.ocfs2_extent_tree* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %5
  %30 = phi i1 [ false, %5 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %34 = call i32 @ocfs2_find_branch_target(%struct.ocfs2_extent_tree* %33, %struct.buffer_head** %15)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %91

41:                                               ; preds = %29
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %41
  %45 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %46 = ptrtoint %struct.buffer_head* %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %49 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ocfs2_metadata_cache_owner(i32 %50)
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @trace_ocfs2_grow_tree(i64 %51, i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %56 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %57 = call i32 @ocfs2_shift_tree_depth(i32* %54, %struct.ocfs2_extent_tree* %55, %struct.ocfs2_alloc_context* %56, %struct.buffer_head** %15)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %91

63:                                               ; preds = %44
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %69, align 8
  %71 = ptrtoint %struct.buffer_head* %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %74 = call i32 @get_bh(%struct.buffer_head* %73)
  %75 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %76 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %75, %struct.buffer_head** %76, align 8
  br label %91

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %41
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %82 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %83 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %84 = call i32 @ocfs2_add_branch(i32* %79, %struct.ocfs2_extent_tree* %80, %struct.buffer_head* %81, %struct.buffer_head** %82, %struct.ocfs2_alloc_context* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %90

90:                                               ; preds = %87, %78
  br label %91

91:                                               ; preds = %90, %68, %60, %37
  %92 = load i32*, i32** %8, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %14, align 4
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %99 = call i32 @brelse(%struct.buffer_head* %98)
  %100 = load i32, i32* %11, align 4
  ret i32 %100
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_is_dealloc_empty(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_find_branch_target(%struct.ocfs2_extent_tree*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @trace_ocfs2_grow_tree(i64, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @ocfs2_shift_tree_depth(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_alloc_context*, %struct.buffer_head**) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_add_branch(i32*, %struct.ocfs2_extent_tree*, %struct.buffer_head*, %struct.buffer_head**, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
