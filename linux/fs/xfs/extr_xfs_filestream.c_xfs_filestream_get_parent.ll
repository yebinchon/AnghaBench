; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_filestream.c_xfs_filestream_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_filestream.c_xfs_filestream_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_inode* (%struct.xfs_inode*)* @xfs_filestream_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_inode* @xfs_filestream_get_parent(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %7 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %8 = call %struct.inode* @VFS_I(%struct.xfs_inode* %7)
  store %struct.inode* %8, %struct.inode** %3, align 8
  store %struct.inode* null, %struct.inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.dentry* @d_find_alias(%struct.inode* %9)
  store %struct.dentry* %10, %struct.dentry** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = call %struct.dentry* @dget_parent(%struct.dentry* %15)
  store %struct.dentry* %16, %struct.dentry** %6, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = icmp ne %struct.dentry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %26

20:                                               ; preds = %14
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = call i32 @d_inode(%struct.dentry* %21)
  %23 = call %struct.inode* @igrab(i32 %22)
  store %struct.inode* %23, %struct.inode** %4, align 8
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = call i32 @dput(%struct.dentry* %24)
  br label %26

26:                                               ; preds = %20, %19
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = call i32 @dput(%struct.dentry* %27)
  br label %29

29:                                               ; preds = %26, %13
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call %struct.xfs_inode* @XFS_I(%struct.inode* %33)
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi %struct.xfs_inode* [ %34, %32 ], [ null, %35 ]
  ret %struct.xfs_inode* %37
}

declare dso_local %struct.inode* @VFS_I(%struct.xfs_inode*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.inode* @igrab(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
