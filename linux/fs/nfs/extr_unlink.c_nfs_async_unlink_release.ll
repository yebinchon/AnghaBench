; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_async_unlink_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_async_unlink_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_unlinkdata = type { %struct.dentry* }
%struct.dentry = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfs_async_unlink_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_async_unlink_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs_unlinkdata*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.nfs_unlinkdata*
  store %struct.nfs_unlinkdata* %7, %struct.nfs_unlinkdata** %3, align 8
  %8 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @d_inode(i32 %16)
  %18 = call %struct.TYPE_2__* @NFS_I(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @up_read_non_owner(i32* %19)
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = call i32 @d_lookup_done(%struct.dentry* %21)
  %23 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %3, align 8
  %24 = call i32 @nfs_free_unlinkdata(%struct.nfs_unlinkdata* %23)
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = call i32 @dput(%struct.dentry* %25)
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = call i32 @nfs_sb_deactive(%struct.super_block* %27)
  ret void
}

declare dso_local i32 @up_read_non_owner(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @d_lookup_done(%struct.dentry*) #1

declare dso_local i32 @nfs_free_unlinkdata(%struct.nfs_unlinkdata*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @nfs_sb_deactive(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
