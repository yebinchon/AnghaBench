; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_inode_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_inode_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }
%struct.nilfs_inode_info = type { i32, i32 }

@NILFS_I_DIRTY = common dso_local global i32 0, align 4
@NILFS_I_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_inode_dirty(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nilfs_inode_info*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %6)
  store %struct.nilfs_inode_info* %7, %struct.nilfs_inode_info** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %11, align 8
  store %struct.the_nilfs* %12, %struct.the_nilfs** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %14 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %13, i32 0, i32 1
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %1
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32, i32* @NILFS_I_DIRTY, align 4
  %22 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %23 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @NILFS_I_BUSY, align 4
  %28 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %29 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %26, %17
  %33 = phi i1 [ true, %17 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %36 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  br label %38

38:                                               ; preds = %32, %1
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
