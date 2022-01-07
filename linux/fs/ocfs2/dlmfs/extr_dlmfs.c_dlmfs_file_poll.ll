; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_file_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_file_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.dlmfs_inode_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@USER_LOCK_BLOCKED = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @dlmfs_file_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlmfs_file_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dlmfs_inode_private*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.inode* @file_inode(%struct.file* %8)
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = call %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode* %10)
  store %struct.dlmfs_inode_private* %11, %struct.dlmfs_inode_private** %7, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %7, align 8
  %14 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @poll_wait(%struct.file* %12, i32* %15, i32* %16)
  %18 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %7, align 8
  %19 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %7, align 8
  %23 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @USER_LOCK_BLOCKED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @EPOLLIN, align 4
  %31 = load i32, i32* @EPOLLRDNORM, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %2
  %34 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %7, align 8
  %35 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
