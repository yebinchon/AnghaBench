; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_adjust_rightmost_branch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_adjust_rightmost_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_list = type { i32, %struct.ocfs2_extent_rec* }
%struct.ocfs2_extent_rec = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*)* @ocfs2_adjust_rightmost_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_adjust_rightmost_branch(i32* %0, %struct.ocfs2_extent_tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ocfs2_extent_tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca %struct.ocfs2_extent_list*, align 8
  %9 = alloca %struct.ocfs2_extent_rec*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %5, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %7, align 8
  %10 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %11 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %10)
  store %struct.ocfs2_path* %11, %struct.ocfs2_path** %7, align 8
  %12 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %13 = icmp ne %struct.ocfs2_path* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %74

18:                                               ; preds = %2
  %19 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %23 = load i32, i32* @UINT_MAX, align 4
  %24 = call i32 @ocfs2_find_path(i32 %21, %struct.ocfs2_path* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %70

30:                                               ; preds = %18
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %33 = call i32 @path_num_items(%struct.ocfs2_path* %32)
  %34 = call i32 @ocfs2_extend_trans(i32* %31, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mlog_errno(i32 %38)
  br label %70

40:                                               ; preds = %30
  %41 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %42 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %46 = call i32 @ocfs2_journal_access_path(i32 %43, i32* %44, %struct.ocfs2_path* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %70

52:                                               ; preds = %40
  %53 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %54 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %53)
  store %struct.ocfs2_extent_list* %54, %struct.ocfs2_extent_list** %8, align 8
  %55 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %56 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %55, i32 0, i32 1
  %57 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %56, align 8
  %58 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %57, i64 %63
  store %struct.ocfs2_extent_rec* %64, %struct.ocfs2_extent_rec** %9, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %67 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %68 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %69 = call i32 @ocfs2_adjust_rightmost_records(i32* %65, %struct.ocfs2_extent_tree* %66, %struct.ocfs2_path* %67, %struct.ocfs2_extent_rec* %68)
  br label %70

70:                                               ; preds = %52, %49, %37, %27
  %71 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %72 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extend_trans(i32*, i32) #1

declare dso_local i32 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_journal_access_path(i32, i32*, %struct.ocfs2_path*) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_adjust_rightmost_records(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
