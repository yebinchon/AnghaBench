; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_rotate_rightmost_leaf_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_rotate_rightmost_leaf_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_extent_list = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*)* @ocfs2_rotate_rightmost_leaf_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_rotate_rightmost_leaf_left(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_extent_tree*, align 8
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_extent_list*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %6, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %7, align 8
  %11 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %12 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %11)
  store %struct.buffer_head* %12, %struct.buffer_head** %9, align 8
  %13 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %14 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %13)
  store %struct.ocfs2_extent_list* %14, %struct.ocfs2_extent_list** %10, align 8
  %15 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %10, align 8
  %16 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @ocfs2_is_empty_extent(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %28 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %29 = call i64 @path_num_items(%struct.ocfs2_path* %28)
  %30 = sub nsw i64 %29, 1
  %31 = call i32 @ocfs2_path_bh_journal_access(i32* %23, i32 %26, %struct.ocfs2_path* %27, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %43

37:                                               ; preds = %22
  %38 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %10, align 8
  %39 = call i32 @ocfs2_remove_empty_extent(%struct.ocfs2_extent_list* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %42 = call i32 @ocfs2_journal_dirty(i32* %40, %struct.buffer_head* %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %21
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_is_empty_extent(i32*) #1

declare dso_local i32 @ocfs2_path_bh_journal_access(i32*, i32, %struct.ocfs2_path*, i64) #1

declare dso_local i64 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_remove_empty_extent(%struct.ocfs2_extent_list*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
