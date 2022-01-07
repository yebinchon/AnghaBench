; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_unlink_subtree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_unlink_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.buffer_head*, %struct.ocfs2_extent_list* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_block = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_unlink_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_unlink_subtree(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_path* %3, i32 %4, %struct.ocfs2_cached_dealloc_ctxt* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ocfs2_extent_list*, align 8
  %16 = alloca %struct.ocfs2_extent_block*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %9, align 8
  store %struct.ocfs2_path* %3, %struct.ocfs2_path** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %17 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %18 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  store %struct.buffer_head* %24, %struct.buffer_head** %14, align 8
  %25 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %26 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %31, align 8
  store %struct.ocfs2_extent_list* %32, %struct.ocfs2_extent_list** %15, align 8
  %33 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %34 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %44, %struct.ocfs2_extent_block** %16, align 8
  store i32 1, i32* %13, align 4
  br label %45

45:                                               ; preds = %67, %6
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %16, align 8
  %62 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %70

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %45

70:                                               ; preds = %65, %45
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %73 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = icmp sge i32 %71, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %80 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = call i32 @memset(%struct.TYPE_4__* %84, i32 0, i32 4)
  %86 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %87 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %86, i32 0, i32 0
  %88 = call i32 @le16_add_cpu(i32* %87, i32 -1)
  %89 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %90 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %89)
  %91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %93, %struct.ocfs2_extent_block** %16, align 8
  %94 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %16, align 8
  %95 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %98 = call i32 @ocfs2_journal_dirty(i32* %96, %struct.buffer_head* %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %101 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %100)
  %102 = call i32 @ocfs2_journal_dirty(i32* %99, %struct.buffer_head* %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %105 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %106 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @ocfs2_unlink_path(i32* %103, %struct.ocfs2_extent_tree* %104, %struct.ocfs2_cached_dealloc_ctxt* %105, %struct.ocfs2_path* %106, i32 %108)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_unlink_path(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
