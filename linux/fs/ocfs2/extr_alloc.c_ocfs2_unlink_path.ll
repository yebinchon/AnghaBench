; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_unlink_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_unlink_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_block = type { i32, %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32*, i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Inode %llu, attempted to remove extent block %llu with %u records\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_path*, i32)* @ocfs2_unlink_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_unlink_path(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_cached_dealloc_ctxt* %2, %struct.ocfs2_path* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_extent_block*, align 8
  %14 = alloca %struct.ocfs2_extent_list*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %2, %struct.ocfs2_cached_dealloc_ctxt** %8, align 8
  store %struct.ocfs2_path* %3, %struct.ocfs2_path** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %12, align 4
  br label %17

17:                                               ; preds = %90, %5
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %20 = call i32 @path_num_items(%struct.ocfs2_path* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %93

22:                                               ; preds = %17
  %23 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %24 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  store %struct.buffer_head* %30, %struct.buffer_head** %15, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %32 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %34, %struct.ocfs2_extent_block** %13, align 8
  %35 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %36 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %35, i32 0, i32 1
  store %struct.ocfs2_extent_list* %36, %struct.ocfs2_extent_list** %14, align 8
  %37 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %38 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @le16_to_cpu(i64 %39)
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %65

42:                                               ; preds = %22
  %43 = load i32, i32* @ML_ERROR, align 4
  %44 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %45 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ocfs2_metadata_cache_owner(i32 %46)
  %48 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %49 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @le64_to_cpu(i32 %50)
  %52 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %53 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @le16_to_cpu(i64 %54)
  %56 = call i32 @mlog(i32 %43, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %51, i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %59 = call i32 @ocfs2_journal_dirty(i32* %57, %struct.buffer_head* %58)
  %60 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %61 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %64 = call i32 @ocfs2_remove_from_cache(i32 %62, %struct.buffer_head* %63)
  br label %90

65:                                               ; preds = %22
  %66 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %67 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %69 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i32 @memset(i32* %71, i32 0, i32 4)
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %75 = call i32 @ocfs2_journal_dirty(i32* %73, %struct.buffer_head* %74)
  %76 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %8, align 8
  %77 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %78 = call i32 @ocfs2_cache_extent_block_free(%struct.ocfs2_cached_dealloc_ctxt* %76, %struct.ocfs2_extent_block* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %65
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %84

84:                                               ; preds = %81, %65
  %85 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %86 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %89 = call i32 @ocfs2_remove_from_cache(i32 %87, %struct.buffer_head* %88)
  br label %90

90:                                               ; preds = %84, %42
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %17

93:                                               ; preds = %17
  ret void
}

declare dso_local i32 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_remove_from_cache(i32, %struct.buffer_head*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ocfs2_cache_extent_block_free(%struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_extent_block*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
