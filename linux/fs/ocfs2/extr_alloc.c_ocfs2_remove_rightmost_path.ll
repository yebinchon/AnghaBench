; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_remove_rightmost_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_remove_rightmost_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.ocfs2_extent_list*, i32 }
%struct.ocfs2_extent_list = type { i32*, i64, i64 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_block = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_remove_rightmost_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_remove_rightmost_path(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_cached_dealloc_ctxt* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_extent_tree*, align 8
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ocfs2_path*, align 8
  %13 = alloca %struct.ocfs2_extent_block*, align 8
  %14 = alloca %struct.ocfs2_extent_list*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %6, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %7, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %3, %struct.ocfs2_cached_dealloc_ctxt** %8, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %12, align 8
  %15 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %16 = call i32 @ocfs2_et_sanity_check(%struct.ocfs2_extent_tree* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %139

20:                                               ; preds = %4
  %21 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %22 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %26 = call i32 @ocfs2_journal_access_path(i32 %23, i32* %24, %struct.ocfs2_path* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %139

32:                                               ; preds = %20
  %33 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ocfs2_metadata_cache_get_super(i32 %35)
  %37 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %38 = call i32 @ocfs2_find_cpos_for_left_leaf(i32 %36, %struct.ocfs2_path* %37, i64* %11)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %139

44:                                               ; preds = %32
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %114

47:                                               ; preds = %44
  %48 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %49 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %48)
  store %struct.ocfs2_path* %49, %struct.ocfs2_path** %12, align 8
  %50 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %51 = icmp ne %struct.ocfs2_path* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %139

57:                                               ; preds = %47
  %58 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @ocfs2_find_path(i32 %60, %struct.ocfs2_path* %61, i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %139

69:                                               ; preds = %57
  %70 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %71 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %75 = call i32 @ocfs2_journal_access_path(i32 %72, i32* %73, %struct.ocfs2_path* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  br label %139

81:                                               ; preds = %69
  %82 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %83 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %84 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %85 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %82, %struct.ocfs2_path* %83, %struct.ocfs2_path* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %88 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %89 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %8, align 8
  %92 = call i32 @ocfs2_unlink_subtree(i32* %86, %struct.ocfs2_extent_tree* %87, %struct.ocfs2_path* %88, %struct.ocfs2_path* %89, i32 %90, %struct.ocfs2_cached_dealloc_ctxt* %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %95 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %96 = call i32 @ocfs2_update_edge_lengths(i32* %93, %struct.ocfs2_extent_tree* %94, %struct.ocfs2_path* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %81
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %139

102:                                              ; preds = %81
  %103 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %104 = call %struct.TYPE_2__* @path_leaf_bh(%struct.ocfs2_path* %103)
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %107, %struct.ocfs2_extent_block** %13, align 8
  %108 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %109 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %110 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le64_to_cpu(i32 %111)
  %113 = call i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree* %108, i32 %112)
  br label %134

114:                                              ; preds = %44
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %117 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %8, align 8
  %118 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %119 = call i32 @ocfs2_unlink_path(i32* %115, %struct.ocfs2_extent_tree* %116, %struct.ocfs2_cached_dealloc_ctxt* %117, %struct.ocfs2_path* %118, i32 1)
  %120 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %121 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %120, i32 0, i32 0
  %122 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %121, align 8
  store %struct.ocfs2_extent_list* %122, %struct.ocfs2_extent_list** %14, align 8
  %123 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %124 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  %125 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %126 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %128 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = call i32 @memset(i32* %130, i32 0, i32 4)
  %132 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %133 = call i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree* %132, i32 0)
  br label %134

134:                                              ; preds = %114, %102
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %137 = call i32 @path_root_bh(%struct.ocfs2_path* %136)
  %138 = call i32 @ocfs2_journal_dirty(i32* %135, i32 %137)
  br label %139

139:                                              ; preds = %134, %99, %78, %66, %52, %41, %29, %19
  %140 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %141 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %140)
  %142 = load i32, i32* %9, align 4
  ret i32 %142
}

declare dso_local i32 @ocfs2_et_sanity_check(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_journal_access_path(i32, i32*, %struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(i32, %struct.ocfs2_path*, i64*) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_unlink_subtree(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_update_edge_lengths(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*) #1

declare dso_local %struct.TYPE_2__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_unlink_path(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

declare dso_local i32 @path_root_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
