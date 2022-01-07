; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_add_refcount_flag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_add_refcount_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_post_refcount = type { i32 (%struct.inode.0*, i32*, i32)*, i32, i64 }
%struct.inode.0 = type opaque
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_add_refcount_flag(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_caching_info* %2, %struct.buffer_head* %3, i32 %4, i32 %5, i32 %6, %struct.ocfs2_cached_dealloc_ctxt* %7, %struct.ocfs2_post_refcount* %8) #0 {
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_extent_tree*, align 8
  %12 = alloca %struct.ocfs2_caching_info*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %18 = alloca %struct.ocfs2_post_refcount*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ocfs2_super*, align 8
  %24 = alloca %struct.ocfs2_alloc_context*, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %11, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %12, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %7, %struct.ocfs2_cached_dealloc_ctxt** %17, align 8
  store %struct.ocfs2_post_refcount* %8, %struct.ocfs2_post_refcount** %18, align 8
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ocfs2_super* @OCFS2_SB(i32 %27)
  store %struct.ocfs2_super* %28, %struct.ocfs2_super** %23, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %24, align 8
  %29 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %30 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ocfs2_extend_meta_needed(i32 %31)
  store i32 %32, i32* %22, align 4
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %12, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @ocfs2_calc_refcount_meta_credits(i32 %35, %struct.ocfs2_caching_info* %36, %struct.buffer_head* %37, i32 %38, i32 %39, i32* %22, i32* %21)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %9
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %144

46:                                               ; preds = %9
  %47 = load i32, i32* %22, align 4
  %48 = load i32, i32* %21, align 4
  %49 = call i32 @trace_ocfs2_add_refcount_flag(i32 %47, i32 %48)
  %50 = load i32, i32* %22, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %54 = load i32, i32* %22, align 4
  %55 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %53, i32 %54, %struct.ocfs2_alloc_context** %24)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %19, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %144

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %46
  %63 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %64 = icmp ne %struct.ocfs2_post_refcount* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %67 = getelementptr inbounds %struct.ocfs2_post_refcount, %struct.ocfs2_post_refcount* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %21, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %21, align 4
  br label %73

73:                                               ; preds = %65, %62
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %75 = load i32, i32* %21, align 4
  %76 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %74, i32 %75)
  store i32* %76, i32** %20, align 8
  %77 = load i32*, i32** %20, align 8
  %78 = call i64 @IS_ERR(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32*, i32** %20, align 8
  %82 = call i32 @PTR_ERR(i32* %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %144

85:                                               ; preds = %73
  %86 = load %struct.inode*, %struct.inode** %10, align 8
  %87 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %88 = load i32*, i32** %20, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %24, align 8
  %93 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %17, align 8
  %94 = call i32 @ocfs2_mark_extent_refcounted(%struct.inode* %86, %struct.ocfs2_extent_tree* %87, i32* %88, i32 %89, i32 %90, i32 %91, %struct.ocfs2_alloc_context* %92, %struct.ocfs2_cached_dealloc_ctxt* %93)
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load i32, i32* %19, align 4
  %99 = call i32 @mlog_errno(i32 %98)
  br label %140

100:                                              ; preds = %85
  %101 = load i32*, i32** %20, align 8
  %102 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %12, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %24, align 8
  %107 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %17, align 8
  %108 = call i32 @__ocfs2_increase_refcount(i32* %101, %struct.ocfs2_caching_info* %102, %struct.buffer_head* %103, i32 %104, i32 %105, i32 0, %struct.ocfs2_alloc_context* %106, %struct.ocfs2_cached_dealloc_ctxt* %107)
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load i32, i32* %19, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %140

114:                                              ; preds = %100
  %115 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %116 = icmp ne %struct.ocfs2_post_refcount* %115, null
  br i1 %116, label %117, label %139

117:                                              ; preds = %114
  %118 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %119 = getelementptr inbounds %struct.ocfs2_post_refcount, %struct.ocfs2_post_refcount* %118, i32 0, i32 0
  %120 = load i32 (%struct.inode.0*, i32*, i32)*, i32 (%struct.inode.0*, i32*, i32)** %119, align 8
  %121 = icmp ne i32 (%struct.inode.0*, i32*, i32)* %120, null
  br i1 %121, label %122, label %139

122:                                              ; preds = %117
  %123 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %124 = getelementptr inbounds %struct.ocfs2_post_refcount, %struct.ocfs2_post_refcount* %123, i32 0, i32 0
  %125 = load i32 (%struct.inode.0*, i32*, i32)*, i32 (%struct.inode.0*, i32*, i32)** %124, align 8
  %126 = load %struct.inode*, %struct.inode** %10, align 8
  %127 = bitcast %struct.inode* %126 to %struct.inode.0*
  %128 = load i32*, i32** %20, align 8
  %129 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %130 = getelementptr inbounds %struct.ocfs2_post_refcount, %struct.ocfs2_post_refcount* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 %125(%struct.inode.0* %127, i32* %128, i32 %131)
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @mlog_errno(i32 %136)
  br label %138

138:                                              ; preds = %135, %122
  br label %139

139:                                              ; preds = %138, %117, %114
  br label %140

140:                                              ; preds = %139, %111, %97
  %141 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %142 = load i32*, i32** %20, align 8
  %143 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %141, i32* %142)
  br label %144

144:                                              ; preds = %140, %80, %58, %43
  %145 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %24, align 8
  %146 = icmp ne %struct.ocfs2_alloc_context* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %24, align 8
  %149 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %19, align 4
  ret i32 %151
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_extend_meta_needed(i32) #1

declare dso_local i32 @ocfs2_calc_refcount_meta_credits(i32, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @trace_ocfs2_add_refcount_flag(i32, i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_mark_extent_refcounted(%struct.inode*, %struct.ocfs2_extent_tree*, i32*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @__ocfs2_increase_refcount(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
