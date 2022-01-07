; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_commit_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_commit_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32 (%struct.nilfs_bmap.0*, %struct.nilfs_btree_path*, i32, i32*, i32*)*, i32 }
%struct.nilfs_bmap.0 = type opaque
%struct.inode = type { i32 }

@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.inode*)* @nilfs_btree_commit_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_commit_delete(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca %struct.nilfs_btree_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* %3, %struct.inode** %8, align 8
  %10 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  store i32 %10, i32* %9, align 4
  br label %11

11:                                               ; preds = %35, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %17 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %17, i64 %19
  %21 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %20, i32 0, i32 1
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call i32 @nilfs_bmap_commit_end_ptr(%struct.nilfs_bmap* %16, i32* %21, %struct.inode* %22)
  %24 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %24, i64 %26
  %28 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %27, i32 0, i32 0
  %29 = load i32 (%struct.nilfs_bmap.0*, %struct.nilfs_btree_path*, i32, i32*, i32*)*, i32 (%struct.nilfs_bmap.0*, %struct.nilfs_btree_path*, i32, i32*, i32*)** %28, align 8
  %30 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %31 = bitcast %struct.nilfs_bmap* %30 to %struct.nilfs_bmap.0*
  %32 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 %29(%struct.nilfs_bmap.0* %31, %struct.nilfs_btree_path* %32, i32 %33, i32* null, i32* null)
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %40 = call i32 @nilfs_bmap_dirty(%struct.nilfs_bmap* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %44 = call i32 @nilfs_bmap_set_dirty(%struct.nilfs_bmap* %43)
  br label %45

45:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @nilfs_bmap_commit_end_ptr(%struct.nilfs_bmap*, i32*, %struct.inode*) #1

declare dso_local i32 @nilfs_bmap_dirty(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_set_dirty(%struct.nilfs_bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
