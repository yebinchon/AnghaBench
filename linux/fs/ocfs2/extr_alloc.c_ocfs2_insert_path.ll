; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_insert_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_insert_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_insert_type = type { i64 }
%struct.buffer_head = type { i32 }

@SPLIT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*, %struct.ocfs2_insert_type*)* @ocfs2_insert_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_insert_path(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_path* %3, %struct.ocfs2_extent_rec* %4, %struct.ocfs2_insert_type* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca %struct.ocfs2_extent_rec*, align 8
  %12 = alloca %struct.ocfs2_insert_type*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %9, align 8
  store %struct.ocfs2_path* %3, %struct.ocfs2_path** %10, align 8
  store %struct.ocfs2_extent_rec* %4, %struct.ocfs2_extent_rec** %11, align 8
  store %struct.ocfs2_insert_type* %5, %struct.ocfs2_insert_type** %12, align 8
  %16 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %17 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %16)
  store %struct.buffer_head* %17, %struct.buffer_head** %15, align 8
  %18 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %19 = icmp ne %struct.ocfs2_path* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %6
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %23 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ocfs2_extend_trans(i32* %21, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %103

31:                                               ; preds = %20
  %32 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %33 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %37 = call i32 @ocfs2_journal_access_path(i32 %34, i32* %35, %struct.ocfs2_path* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %103

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %6
  %45 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %50 = call i32 @ocfs2_journal_access_path(i32 %47, i32* %48, %struct.ocfs2_path* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %103

56:                                               ; preds = %44
  %57 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %12, align 8
  %58 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SPLIT_NONE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %64 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %65 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %66 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %67 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %12, align 8
  %68 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @ocfs2_split_record(%struct.ocfs2_extent_tree* %63, %struct.ocfs2_path* %64, %struct.ocfs2_path* %65, %struct.ocfs2_extent_rec* %66, i64 %69)
  %71 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %72 = icmp ne %struct.ocfs2_path* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %76 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %75)
  %77 = call i32 @ocfs2_journal_dirty(i32* %74, %struct.buffer_head* %76)
  br label %78

78:                                               ; preds = %73, %62
  br label %86

79:                                               ; preds = %56
  %80 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %81 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %82 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %83 = call i32 @path_leaf_el(%struct.ocfs2_path* %82)
  %84 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %12, align 8
  %85 = call i32 @ocfs2_insert_at_leaf(%struct.ocfs2_extent_tree* %80, %struct.ocfs2_extent_rec* %81, i32 %83, %struct.ocfs2_insert_type* %84)
  br label %86

86:                                               ; preds = %79, %78
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %89 = call i32 @ocfs2_journal_dirty(i32* %87, %struct.buffer_head* %88)
  %90 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %91 = icmp ne %struct.ocfs2_path* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %94 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %95 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %96 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %93, %struct.ocfs2_path* %94, %struct.ocfs2_path* %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %99 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @ocfs2_complete_edge_insert(i32* %97, %struct.ocfs2_path* %98, %struct.ocfs2_path* %99, i32 %100)
  br label %102

102:                                              ; preds = %92, %86
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %102, %53, %40, %28
  %104 = load i32, i32* %13, align 4
  ret i32 %104
}

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_extend_trans(i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_path(i32, i32*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_split_record(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*, i64) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_insert_at_leaf(%struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, i32, %struct.ocfs2_insert_type*) #1

declare dso_local i32 @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_complete_edge_insert(i32*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
