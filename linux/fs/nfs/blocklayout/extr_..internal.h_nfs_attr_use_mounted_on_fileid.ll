; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_..internal.h_nfs_attr_use_mounted_on_fileid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_..internal.h_nfs_attr_use_mounted_on_fileid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fattr = type { i32 }

@NFS_ATTR_FATTR_MOUNTED_ON_FILEID = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MOUNTPOINT = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_V4_REFERRAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_fattr*)* @nfs_attr_use_mounted_on_fileid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_attr_use_mounted_on_fileid(%struct.nfs_fattr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_fattr*, align 8
  store %struct.nfs_fattr* %0, %struct.nfs_fattr** %3, align 8
  %4 = load %struct.nfs_fattr*, %struct.nfs_fattr** %3, align 8
  %5 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NFS_ATTR_FATTR_MOUNTED_ON_FILEID, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = load %struct.nfs_fattr*, %struct.nfs_fattr** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NFS_ATTR_FATTR_MOUNTPOINT, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.nfs_fattr*, %struct.nfs_fattr** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NFS_ATTR_FATTR_V4_REFERRAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %26

25:                                               ; preds = %17, %10
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
