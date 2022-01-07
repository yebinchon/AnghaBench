; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_node_broken.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_node_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_btree_node = type { i32 }
%struct.inode = type { i32, i32 }

@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@NILFS_BTREE_LEVEL_MAX = common dso_local global i32 0, align 4
@NILFS_BTREE_NODE_ROOT = common dso_local global i32 0, align 4
@KERN_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"bad btree node (ino=%lu, blocknr=%llu): level = %d, flags = 0x%x, nchildren = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_btree_node*, i64, %struct.inode*, i64)* @nilfs_btree_node_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_node_broken(%struct.nilfs_btree_node* %0, i64 %1, %struct.inode* %2, i64 %3) #0 {
  %5 = alloca %struct.nilfs_btree_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nilfs_btree_node* %0, %struct.nilfs_btree_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %5, align 8
  %14 = call i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %5, align 8
  %16 = call i32 @nilfs_btree_node_get_flags(%struct.nilfs_btree_node* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %5, align 8
  %18 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %39, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @NILFS_BTREE_LEVEL_MAX, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @NILFS_BTREE_NODE_ROOT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @NILFS_BTREE_NODE_NCHILDREN_MAX(i64 %36)
  %38 = icmp sgt i32 %35, %37
  br label %39

39:                                               ; preds = %34, %31, %26, %22, %4
  %40 = phi i1 [ true, %31 ], [ true, %26 ], [ true, %22 ], [ true, %4 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @KERN_CRIT, align 4
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @nilfs_msg(i32 %47, i32 %48, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %52, i32 %53, i32 %54, i32 %55)
  store i32 1, i32* %12, align 4
  br label %57

57:                                               ; preds = %44, %39
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_node_get_flags(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NILFS_BTREE_NODE_NCHILDREN_MAX(i64) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
