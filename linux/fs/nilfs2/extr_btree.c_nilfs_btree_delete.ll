; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32 }
%struct.nilfs_bmap_stats = type { i32 }
%struct.inode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32)* @nilfs_btree_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_delete(%struct.nilfs_bmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_btree_path*, align 8
  %7 = alloca %struct.nilfs_bmap_stats, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call %struct.nilfs_btree_path* (...) @nilfs_btree_alloc_path()
  store %struct.nilfs_btree_path* %11, %struct.nilfs_btree_path** %6, align 8
  %12 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %13 = icmp eq %struct.nilfs_btree_path* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %19 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  %22 = call i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap* %18, %struct.nilfs_btree_path* %19, i32 %20, i32* null, i32 %21, i32 0)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %55

26:                                               ; preds = %17
  %27 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %28 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %32 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %31)
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi %struct.inode* [ %32, %30 ], [ null, %33 ]
  store %struct.inode* %35, %struct.inode** %8, align 8
  %36 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %37 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i32 @nilfs_btree_prepare_delete(%struct.nilfs_bmap* %36, %struct.nilfs_btree_path* %37, i32* %9, %struct.nilfs_bmap_stats* %7, %struct.inode* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %55

43:                                               ; preds = %34
  %44 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %45 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i32 @nilfs_btree_commit_delete(%struct.nilfs_bmap* %44, %struct.nilfs_btree_path* %45, i32 %46, %struct.inode* %47)
  %49 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %50 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @nilfs_inode_sub_blocks(i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %43, %42, %25
  %56 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %57 = call i32 @nilfs_btree_free_path(%struct.nilfs_btree_path* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.nilfs_btree_path* @nilfs_btree_alloc_path(...) #1

declare dso_local i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32, i32) #1

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_prepare_delete(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32*, %struct.nilfs_bmap_stats*, %struct.inode*) #1

declare dso_local i32 @nilfs_btree_commit_delete(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.inode*) #1

declare dso_local i32 @nilfs_inode_sub_blocks(i32, i32) #1

declare dso_local i32 @nilfs_btree_free_path(%struct.nilfs_btree_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
