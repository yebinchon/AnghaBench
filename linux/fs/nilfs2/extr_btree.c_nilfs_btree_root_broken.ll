; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_root_broken.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_root_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_btree_node = type { i32 }
%struct.inode = type { i32, i32 }

@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@NILFS_BTREE_LEVEL_MAX = common dso_local global i32 0, align 4
@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4
@KERN_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"bad btree root (ino=%lu): level = %d, flags = 0x%x, nchildren = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_btree_node*, %struct.inode*)* @nilfs_btree_root_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_root_broken(%struct.nilfs_btree_node* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.nilfs_btree_node*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nilfs_btree_node* %0, %struct.nilfs_btree_node** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %3, align 8
  %10 = call i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %3, align 8
  %12 = call i32 @nilfs_btree_node_get_flags(%struct.nilfs_btree_node* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %3, align 8
  %14 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NILFS_BTREE_LEVEL_MAX, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %28 = icmp sgt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %22, %18, %2
  %30 = phi i1 [ true, %22 ], [ true, %18 ], [ true, %2 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @KERN_CRIT, align 4
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @nilfs_msg(i32 %37, i32 %38, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 %44)
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %34, %29
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_node_get_flags(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
