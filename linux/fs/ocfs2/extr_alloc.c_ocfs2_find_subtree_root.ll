; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_subtree_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_subtree_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [83 x i8] c"Owner %llu, left depth %u, right depth %u\0Aleft leaf blk %llu, right leaf blk %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %0, %struct.ocfs2_path* %1, %struct.ocfs2_path* %2) #0 {
  %4 = alloca %struct.ocfs2_extent_tree*, align 8
  %5 = alloca %struct.ocfs2_path*, align 8
  %6 = alloca %struct.ocfs2_path*, align 8
  %7 = alloca i32, align 4
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %4, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %5, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %9 = call i64 @path_root_bh(%struct.ocfs2_path* %8)
  %10 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %11 = call i64 @path_root_bh(%struct.ocfs2_path* %10)
  %12 = icmp ne i64 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  br label %15

15:                                               ; preds = %43, %3
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %4, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ocfs2_metadata_cache_owner(i32 %26)
  %28 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %29 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %32 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %35 = call %struct.TYPE_6__* @path_leaf_bh(%struct.ocfs2_path* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %39 = call %struct.TYPE_6__* @path_leaf_bh(%struct.ocfs2_path* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @mlog_bug_on_msg(i32 %23, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %30, i32 %33, i64 %37, i64 %41)
  br label %43

43:                                               ; preds = %15
  %44 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %45 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %55 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %53, %63
  br i1 %64, label %15, label %65

65:                                               ; preds = %43
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %66, 1
  ret i32 %67
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @path_root_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i32, i32, i64, i64) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local %struct.TYPE_6__* @path_leaf_bh(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
