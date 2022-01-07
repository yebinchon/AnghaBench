; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_vn_change_ok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_vn_change_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.TYPE_2__ = type { %struct.xfs_mount* }

@XFS_MOUNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @xfs_vn_change_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_vn_change_ok(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = call i32 @d_inode(%struct.dentry* %7)
  %9 = call %struct.TYPE_2__* @XFS_I(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  store %struct.xfs_mount* %11, %struct.xfs_mount** %6, align 8
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %13 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XFS_MOUNT_RDONLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EROFS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %23 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = load %struct.iattr*, %struct.iattr** %5, align 8
  %31 = call i32 @setattr_prepare(%struct.dentry* %29, %struct.iattr* %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %25, %18
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_2__* @XFS_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
