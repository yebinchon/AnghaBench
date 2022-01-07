; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_jffs2_free_raw_node_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_jffs2_free_raw_node_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.jffs2_raw_node_ref* }
%struct.jffs2_raw_node_ref = type { i64, %struct.jffs2_raw_node_ref* }

@REFS_PER_BLOCK = common dso_local global i64 0, align 8
@REF_LINK_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_free_raw_node_refs(%struct.jffs2_sb_info* %0) #0 {
  %2 = alloca %struct.jffs2_sb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_raw_node_ref*, align 8
  %5 = alloca %struct.jffs2_raw_node_ref*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %58, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %9 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %6
  %13 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %14 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %19, align 8
  store %struct.jffs2_raw_node_ref* %20, %struct.jffs2_raw_node_ref** %4, align 8
  br label %21

21:                                               ; preds = %39, %12
  %22 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %4, align 8
  %23 = icmp ne %struct.jffs2_raw_node_ref* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %4, align 8
  %26 = load i64, i64* @REFS_PER_BLOCK, align 8
  %27 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %25, i64 %26
  %28 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REF_LINK_NODE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %4, align 8
  %34 = load i64, i64* @REFS_PER_BLOCK, align 8
  %35 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %33, i64 %34
  %36 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %35, i32 0, i32 1
  %37 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %36, align 8
  store %struct.jffs2_raw_node_ref* %37, %struct.jffs2_raw_node_ref** %5, align 8
  br label %39

38:                                               ; preds = %24
  store %struct.jffs2_raw_node_ref* null, %struct.jffs2_raw_node_ref** %5, align 8
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %4, align 8
  %41 = call i32 @jffs2_free_refblock(%struct.jffs2_raw_node_ref* %40)
  %42 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %5, align 8
  store %struct.jffs2_raw_node_ref* %42, %struct.jffs2_raw_node_ref** %4, align 8
  br label %21

43:                                               ; preds = %21
  %44 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %45 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %52 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store %struct.jffs2_raw_node_ref* null, %struct.jffs2_raw_node_ref** %57, align 8
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %6

61:                                               ; preds = %6
  ret void
}

declare dso_local i32 @jffs2_free_refblock(%struct.jffs2_raw_node_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
