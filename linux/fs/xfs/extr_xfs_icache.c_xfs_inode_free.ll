; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_inode_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_inode_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, i64, i32 }

@XFS_IRECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_inode_free(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %3 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %4 = call i32 @xfs_isiflocked(%struct.xfs_inode* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %10 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* @XFS_IRECLAIM, align 4
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %14 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %18 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %21 = call i32 @__xfs_inode_free(%struct.xfs_inode* %20)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isiflocked(%struct.xfs_inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__xfs_inode_free(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
