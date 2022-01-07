; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_convert_and_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_convert_and_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.buffer_head = type { i32 }
%union.nilfs_bmap_ptr_req = type { i32 }
%struct.nilfs_bmap_stats = type { i32 }

@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_btree_convert_and_insert(%struct.nilfs_bmap* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nilfs_bmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %union.nilfs_bmap_ptr_req, align 4
  %16 = alloca %union.nilfs_bmap_ptr_req, align 4
  %17 = alloca %union.nilfs_bmap_ptr_req*, align 8
  %18 = alloca %union.nilfs_bmap_ptr_req*, align 8
  %19 = alloca %struct.nilfs_bmap_stats, align 4
  %20 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  %21 = load i32, i32* %13, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store %union.nilfs_bmap_ptr_req* %15, %union.nilfs_bmap_ptr_req** %17, align 8
  store %union.nilfs_bmap_ptr_req* null, %union.nilfs_bmap_ptr_req** %18, align 8
  br label %37

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  %29 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %30 = call i32 @nilfs_btree_node_size(%struct.nilfs_bmap* %29)
  %31 = call i32 @NILFS_BTREE_NODE_NCHILDREN_MAX(i32 %30)
  %32 = icmp sle i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store %union.nilfs_bmap_ptr_req* %15, %union.nilfs_bmap_ptr_req** %17, align 8
  store %union.nilfs_bmap_ptr_req* %16, %union.nilfs_bmap_ptr_req** %18, align 8
  br label %36

34:                                               ; preds = %26
  store %union.nilfs_bmap_ptr_req* null, %union.nilfs_bmap_ptr_req** %17, align 8
  store %union.nilfs_bmap_ptr_req* null, %union.nilfs_bmap_ptr_req** %18, align 8
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %33
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %17, align 8
  %41 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %18, align 8
  %42 = call i32 @nilfs_btree_prepare_convert_and_insert(%struct.nilfs_bmap* %38, i32 %39, %union.nilfs_bmap_ptr_req* %40, %union.nilfs_bmap_ptr_req* %41, %struct.buffer_head** %14, %struct.nilfs_bmap_stats* %19)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %20, align 4
  store i32 %46, i32* %7, align 4
  br label %64

47:                                               ; preds = %37
  %48 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %17, align 8
  %55 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %18, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %57 = call i32 @nilfs_btree_commit_convert_and_insert(%struct.nilfs_bmap* %48, i32 %49, i32 %50, i32* %51, i32* %52, i32 %53, %union.nilfs_bmap_ptr_req* %54, %union.nilfs_bmap_ptr_req* %55, %struct.buffer_head* %56)
  %58 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %59 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %19, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nilfs_inode_add_blocks(i32 %60, i32 %62)
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %47, %45
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @NILFS_BTREE_NODE_NCHILDREN_MAX(i32) #1

declare dso_local i32 @nilfs_btree_node_size(%struct.nilfs_bmap*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @nilfs_btree_prepare_convert_and_insert(%struct.nilfs_bmap*, i32, %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req*, %struct.buffer_head**, %struct.nilfs_bmap_stats*) #1

declare dso_local i32 @nilfs_btree_commit_convert_and_insert(%struct.nilfs_bmap*, i32, i32, i32*, i32*, i32, %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req*, %struct.buffer_head*) #1

declare dso_local i32 @nilfs_inode_add_blocks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
