; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_..internal.h_nfs_attr_check_mountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_..internal.h_nfs_attr_check_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.nfs_fattr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NFS_ATTR_FATTR_MOUNTPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.nfs_fattr*)* @nfs_attr_check_mountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_attr_check_mountpoint(%struct.super_block* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.nfs_fattr*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %4, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = call %struct.TYPE_2__* @NFS_SB(%struct.super_block* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %8, i32 0, i32 1
  %10 = call i32 @nfs_fsid_equal(i32* %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @NFS_ATTR_FATTR_MOUNTPOINT, align 4
  %14 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @nfs_fsid_equal(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
