; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_add_refcounted_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_add_refcounted_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32, i32, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_add_refcounted_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_add_refcounted_extent(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_caching_info* %2, %struct.buffer_head* %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.ocfs2_cached_dealloc_ctxt* %8) #0 {
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_extent_tree*, align 8
  %12 = alloca %struct.ocfs2_caching_info*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ocfs2_super*, align 8
  %23 = alloca %struct.ocfs2_alloc_context*, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %11, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %12, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %8, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  store i32 0, i32* %21, align 4
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ocfs2_super* @OCFS2_SB(i32 %26)
  store %struct.ocfs2_super* %27, %struct.ocfs2_super** %22, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %23, align 8
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %34 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %12, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %36 = call i32 @ocfs2_lock_refcount_allocators(i32 %30, i32 %31, i32 %32, %struct.ocfs2_extent_tree* %33, %struct.ocfs2_caching_info* %34, %struct.buffer_head* %35, %struct.ocfs2_alloc_context** %23, i32* null, i32* %21)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %9
  %40 = load i32, i32* %19, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %104

42:                                               ; preds = %9
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %22, align 8
  %44 = load i32, i32* %21, align 4
  %45 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %43, i32 %44)
  store i32* %45, i32** %20, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = call i64 @IS_ERR(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32*, i32** %20, align 8
  %51 = call i32 @PTR_ERR(i32* %50)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %104

54:                                               ; preds = %42
  %55 = load i32*, i32** %20, align 8
  %56 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @ocfs2_clusters_to_blocks(i32 %60, i32 %61)
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %23, align 8
  %66 = call i32 @ocfs2_insert_extent(i32* %55, %struct.ocfs2_extent_tree* %56, i32 %57, i32 %62, i32 %63, i32 %64, %struct.ocfs2_alloc_context* %65)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %100

72:                                               ; preds = %54
  %73 = load i32*, i32** %20, align 8
  %74 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %12, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %23, align 8
  %79 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  %80 = call i32 @ocfs2_increase_refcount(i32* %73, %struct.ocfs2_caching_info* %74, %struct.buffer_head* %75, i32 %76, i32 %77, %struct.ocfs2_alloc_context* %78, %struct.ocfs2_cached_dealloc_ctxt* %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %100

86:                                               ; preds = %72
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = load %struct.ocfs2_super*, %struct.ocfs2_super** %22, align 8
  %89 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @ocfs2_clusters_to_bytes(i32 %90, i32 %91)
  %93 = call i32 @dquot_alloc_space_nodirty(%struct.inode* %87, i32 %92)
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %99

99:                                               ; preds = %96, %86
  br label %100

100:                                              ; preds = %99, %83, %69
  %101 = load %struct.ocfs2_super*, %struct.ocfs2_super** %22, align 8
  %102 = load i32*, i32** %20, align 8
  %103 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %101, i32* %102)
  br label %104

104:                                              ; preds = %100, %49, %39
  %105 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %23, align 8
  %106 = icmp ne %struct.ocfs2_alloc_context* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %23, align 8
  %109 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %19, align 4
  ret i32 %111
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_lock_refcount_allocators(i32, i32, i32, %struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_alloc_context**, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_insert_extent(i32*, %struct.ocfs2_extent_tree*, i32, i32, i32, i32, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_increase_refcount(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @dquot_alloc_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
