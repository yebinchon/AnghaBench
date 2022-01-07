; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_lock_refcount_allocators.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_lock_refcount_allocators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, %struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context**, i32*)* @ocfs2_lock_refcount_allocators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_lock_refcount_allocators(%struct.super_block* %0, i32 %1, i32 %2, %struct.ocfs2_extent_tree* %3, %struct.ocfs2_caching_info* %4, %struct.buffer_head* %5, %struct.ocfs2_alloc_context** %6, %struct.ocfs2_alloc_context** %7, i32* %8) #0 {
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_extent_tree*, align 8
  %14 = alloca %struct.ocfs2_caching_info*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_alloc_context**, align 8
  %17 = alloca %struct.ocfs2_alloc_context**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.ocfs2_extent_tree* %3, %struct.ocfs2_extent_tree** %13, align 8
  store %struct.ocfs2_caching_info* %4, %struct.ocfs2_caching_info** %14, align 8
  store %struct.buffer_head* %5, %struct.buffer_head** %15, align 8
  store %struct.ocfs2_alloc_context** %6, %struct.ocfs2_alloc_context*** %16, align 8
  store %struct.ocfs2_alloc_context** %7, %struct.ocfs2_alloc_context*** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %13, align 8
  %23 = call i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree* %22)
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %21, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %9
  %27 = load i32, i32* %21, align 4
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %94

30:                                               ; preds = %9
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 2
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %13, align 8
  %37 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ocfs2_extend_meta_needed(i32 %38)
  store i32 %39, i32* %20, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.super_block*, %struct.super_block** %10, align 8
  %42 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %13, align 8
  %43 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ocfs2_calc_extend_credits(%struct.super_block* %41, i32 %44)
  %46 = load i32*, i32** %18, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %45
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.super_block*, %struct.super_block** %10, align 8
  %52 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %14, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %18, align 8
  %57 = call i32 @ocfs2_calc_refcount_meta_credits(%struct.super_block* %51, %struct.ocfs2_caching_info* %52, %struct.buffer_head* %53, i32 %54, i32 %55, i32* %20, i32* %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %40
  %61 = load i32, i32* %19, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %94

63:                                               ; preds = %40
  %64 = load i32, i32* %20, align 4
  %65 = load i32*, i32** %18, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @trace_ocfs2_lock_refcount_allocators(i32 %64, i32 %66)
  %68 = load %struct.super_block*, %struct.super_block** %10, align 8
  %69 = call i32 @OCFS2_SB(%struct.super_block* %68)
  %70 = load i32, i32* %20, align 4
  %71 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %16, align 8
  %72 = call i32 @ocfs2_reserve_new_metadata_blocks(i32 %69, i32 %70, %struct.ocfs2_alloc_context** %71)
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %94

78:                                               ; preds = %63
  %79 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %17, align 8
  %80 = icmp ne %struct.ocfs2_alloc_context** %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.super_block*, %struct.super_block** %10, align 8
  %83 = call i32 @OCFS2_SB(%struct.super_block* %82)
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %17, align 8
  %86 = call i32 @ocfs2_reserve_clusters(i32 %83, i32 %84, %struct.ocfs2_alloc_context** %85)
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %92

92:                                               ; preds = %89, %81
  br label %93

93:                                               ; preds = %92, %78
  br label %94

94:                                               ; preds = %93, %75, %60, %26
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %16, align 8
  %99 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %98, align 8
  %100 = icmp ne %struct.ocfs2_alloc_context* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %16, align 8
  %103 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %102, align 8
  %104 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %103)
  %105 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %16, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %105, align 8
  br label %106

106:                                              ; preds = %101, %97
  br label %107

107:                                              ; preds = %106, %94
  %108 = load i32, i32* %19, align 4
  ret i32 %108
}

declare dso_local i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extend_meta_needed(i32) #1

declare dso_local i64 @ocfs2_calc_extend_credits(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_calc_refcount_meta_credits(%struct.super_block*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32*, i32*) #1

declare dso_local i32 @trace_ocfs2_lock_refcount_allocators(i32, i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(i32, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @ocfs2_reserve_clusters(i32, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
