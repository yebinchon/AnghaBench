; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_find_near.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_find_near.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i64 }
%struct.nilfs_btree_node = type { i32 }

@NILFS_BMAP_INVALID_PTR = common dso_local global i32 0, align 4
@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.nilfs_btree_path*)* @nilfs_btree_find_near to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_find_near(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca %struct.nilfs_btree_path*, align 8
  %6 = alloca %struct.nilfs_btree_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %5, align 8
  %9 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %5, align 8
  %10 = icmp eq %struct.nilfs_btree_path* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @NILFS_BMAP_INVALID_PTR, align 4
  store i32 %12, i32* %3, align 4
  br label %61

13:                                               ; preds = %2
  %14 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %15, i64 %17
  %19 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %24 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap* %23, %struct.nilfs_btree_path* %24, i32 %25, i32* %8)
  store %struct.nilfs_btree_node* %26, %struct.nilfs_btree_node** %6, align 8
  %27 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %28 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %28, i64 %30
  %32 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %27, i64 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %61

37:                                               ; preds = %13
  %38 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %42 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %41)
  %43 = sub nsw i32 %42, 1
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %47 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap* %46, %struct.nilfs_btree_path* %47, i32 %48, i32* %8)
  store %struct.nilfs_btree_node* %49, %struct.nilfs_btree_node** %6, align 8
  %50 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %51 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %51, i64 %53
  %55 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %50, i64 %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %37
  %60 = load i32, i32* @NILFS_BMAP_INVALID_PTR, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %45, %22, %11
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*) #1

declare dso_local i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i64, i32) #1

declare dso_local i32 @nilfs_btree_height(%struct.nilfs_bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
