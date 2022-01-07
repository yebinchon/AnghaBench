; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_remove_rightmost_empty_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_remove_rightmost_empty_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_remove_rightmost_empty_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_remove_rightmost_empty_extent(%struct.ocfs2_super* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_cached_dealloc_ctxt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca %struct.ocfs2_path*, align 8
  %9 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %8, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %3, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %13 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %14 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %12, align 4
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %19 = load i32, i32* %12, align 4
  %20 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %18, i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @PTR_ERR(i32* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %46

30:                                               ; preds = %4
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %33 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %34 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %35 = call i32 @ocfs2_remove_rightmost_path(i32* %31, %struct.ocfs2_extent_tree* %32, %struct.ocfs2_path* %33, %struct.ocfs2_cached_dealloc_ctxt* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %42, i32* %43)
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %24
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_remove_rightmost_path(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
