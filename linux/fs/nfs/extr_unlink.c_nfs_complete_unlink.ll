; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_complete_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_complete_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.nfs_unlinkdata*, i32 }
%struct.nfs_unlinkdata = type { i32 }
%struct.inode = type { i32 }

@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_complete_unlink(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_unlinkdata*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %16, align 8
  store %struct.nfs_unlinkdata* %17, %struct.nfs_unlinkdata** %5, align 8
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  store %struct.nfs_unlinkdata* null, %struct.nfs_unlinkdata** %19, align 8
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i64 @NFS_STALE(%struct.inode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %5, align 8
  %30 = call i32 @nfs_call_unlink(%struct.dentry* %27, %struct.inode* %28, %struct.nfs_unlinkdata* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %5, align 8
  %34 = call i32 @nfs_free_unlinkdata(%struct.nfs_unlinkdata* %33)
  br label %35

35:                                               ; preds = %32, %26
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @NFS_STALE(%struct.inode*) #1

declare dso_local i32 @nfs_call_unlink(%struct.dentry*, %struct.inode*, %struct.nfs_unlinkdata*) #1

declare dso_local i32 @nfs_free_unlinkdata(%struct.nfs_unlinkdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
