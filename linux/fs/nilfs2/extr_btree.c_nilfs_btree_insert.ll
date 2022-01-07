; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32 }
%struct.nilfs_bmap_stats = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32, i32)* @nilfs_btree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_insert(%struct.nilfs_bmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nilfs_btree_path*, align 8
  %9 = alloca %struct.nilfs_bmap_stats, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call %struct.nilfs_btree_path* (...) @nilfs_btree_alloc_path()
  store %struct.nilfs_btree_path* %12, %struct.nilfs_btree_path** %8, align 8
  %13 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %14 = icmp eq %struct.nilfs_btree_path* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %61

18:                                               ; preds = %3
  %19 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %20 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  %23 = call i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap* %19, %struct.nilfs_btree_path* %20, i32 %21, i32* null, i32 %22, i32 0)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EEXIST, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %57

35:                                               ; preds = %18
  %36 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %37 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @nilfs_btree_prepare_insert(%struct.nilfs_bmap* %36, %struct.nilfs_btree_path* %37, i32* %10, i32 %38, i32 %39, %struct.nilfs_bmap_stats* %9)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %57

44:                                               ; preds = %35
  %45 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %46 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @nilfs_btree_commit_insert(%struct.nilfs_bmap* %45, %struct.nilfs_btree_path* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %52 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nilfs_inode_add_blocks(i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %44, %43, %34
  %58 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %59 = call i32 @nilfs_btree_free_path(%struct.nilfs_btree_path* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.nilfs_btree_path* @nilfs_btree_alloc_path(...) #1

declare dso_local i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32, i32) #1

declare dso_local i32 @nilfs_btree_prepare_insert(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32*, i32, i32, %struct.nilfs_bmap_stats*) #1

declare dso_local i32 @nilfs_btree_commit_insert(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32, i32) #1

declare dso_local i32 @nilfs_inode_add_blocks(i32, i32) #1

declare dso_local i32 @nilfs_btree_free_path(%struct.nilfs_btree_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
