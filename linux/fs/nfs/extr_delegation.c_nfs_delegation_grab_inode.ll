; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_delegation_grab_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_delegation_grab_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_delegation = type { i32, i32, i32* }

@NFS_DELEGATION_INODE_FREEING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.nfs_delegation*)* @nfs_delegation_grab_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @nfs_delegation_grab_inode(%struct.nfs_delegation* %0) #0 {
  %2 = alloca %struct.nfs_delegation*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.nfs_delegation* %0, %struct.nfs_delegation** %2, align 8
  store %struct.inode* null, %struct.inode** %3, align 8
  %4 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call %struct.inode* @igrab(i32* %14)
  store %struct.inode* %15, %struct.inode** %3, align 8
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @NFS_DELEGATION_INODE_FREEING, align 4
  %21 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  %22 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %21, i32 0, i32 1
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %19, %16
  %25 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  %26 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %28
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @igrab(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
