; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c___ocfs2_init_extent_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c___ocfs2_init_extent_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.ocfs2_extent_tree_operations*, i64, i32*, i8*, i32, %struct.ocfs2_caching_info*, %struct.buffer_head* }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_tree_operations = type { i32 (%struct.ocfs2_extent_tree.0*)*, i32 (%struct.ocfs2_extent_tree.1*)* }
%struct.ocfs2_extent_tree.0 = type opaque
%struct.ocfs2_extent_tree.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i8*, %struct.ocfs2_extent_tree_operations*)* @__ocfs2_init_extent_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ocfs2_init_extent_tree(%struct.ocfs2_extent_tree* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, i32 %3, i8* %4, %struct.ocfs2_extent_tree_operations* %5) #0 {
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca %struct.ocfs2_caching_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ocfs2_extent_tree_operations*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %7, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.ocfs2_extent_tree_operations* %5, %struct.ocfs2_extent_tree_operations** %12, align 8
  %13 = load %struct.ocfs2_extent_tree_operations*, %struct.ocfs2_extent_tree_operations** %12, align 8
  %14 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %15 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %14, i32 0, i32 0
  store %struct.ocfs2_extent_tree_operations* %13, %struct.ocfs2_extent_tree_operations** %15, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %17 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %18 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %17, i32 0, i32 6
  store %struct.buffer_head* %16, %struct.buffer_head** %18, align 8
  %19 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %20 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %21 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %20, i32 0, i32 5
  store %struct.ocfs2_caching_info* %19, %struct.ocfs2_caching_info** %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %24 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %6
  %28 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %11, align 8
  br label %32

32:                                               ; preds = %27, %6
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %37 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %39 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %38, i32 0, i32 0
  %40 = load %struct.ocfs2_extent_tree_operations*, %struct.ocfs2_extent_tree_operations** %39, align 8
  %41 = getelementptr inbounds %struct.ocfs2_extent_tree_operations, %struct.ocfs2_extent_tree_operations* %40, i32 0, i32 1
  %42 = load i32 (%struct.ocfs2_extent_tree.1*)*, i32 (%struct.ocfs2_extent_tree.1*)** %41, align 8
  %43 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %44 = bitcast %struct.ocfs2_extent_tree* %43 to %struct.ocfs2_extent_tree.1*
  %45 = call i32 %42(%struct.ocfs2_extent_tree.1* %44)
  %46 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %47 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %46, i32 0, i32 0
  %48 = load %struct.ocfs2_extent_tree_operations*, %struct.ocfs2_extent_tree_operations** %47, align 8
  %49 = getelementptr inbounds %struct.ocfs2_extent_tree_operations, %struct.ocfs2_extent_tree_operations* %48, i32 0, i32 0
  %50 = load i32 (%struct.ocfs2_extent_tree.0*)*, i32 (%struct.ocfs2_extent_tree.0*)** %49, align 8
  %51 = icmp ne i32 (%struct.ocfs2_extent_tree.0*)* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %32
  %53 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %64

55:                                               ; preds = %32
  %56 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %57 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %56, i32 0, i32 0
  %58 = load %struct.ocfs2_extent_tree_operations*, %struct.ocfs2_extent_tree_operations** %57, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_tree_operations, %struct.ocfs2_extent_tree_operations* %58, i32 0, i32 0
  %60 = load i32 (%struct.ocfs2_extent_tree.0*)*, i32 (%struct.ocfs2_extent_tree.0*)** %59, align 8
  %61 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %62 = bitcast %struct.ocfs2_extent_tree* %61 to %struct.ocfs2_extent_tree.0*
  %63 = call i32 %60(%struct.ocfs2_extent_tree.0* %62)
  br label %64

64:                                               ; preds = %55, %52
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
