; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_abort_update_v.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_abort_update_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.inode*)* @nilfs_btree_abort_update_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_abort_update_v(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca %struct.nilfs_btree_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* %3, %struct.inode** %8, align 8
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  %10 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %10, i64 %12
  %14 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %16, i64 %18
  %20 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @nilfs_dat_abort_update(%struct.inode* %9, i32* %15, i32* %21)
  %23 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %23, i64 %25
  %27 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @buffer_nilfs_node(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  %32 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %33 = call %struct.TYPE_6__* @NILFS_BMAP_I(%struct.nilfs_bmap* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %35, i64 %37
  %39 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %38, i32 0, i32 0
  %40 = call i32 @nilfs_btnode_abort_change_key(i32* %34, i32* %39)
  br label %41

41:                                               ; preds = %31, %4
  ret void
}

declare dso_local i32 @nilfs_dat_abort_update(%struct.inode*, i32*, i32*) #1

declare dso_local i64 @buffer_nilfs_node(i32) #1

declare dso_local i32 @nilfs_btnode_abort_change_key(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @NILFS_BMAP_I(%struct.nilfs_bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
