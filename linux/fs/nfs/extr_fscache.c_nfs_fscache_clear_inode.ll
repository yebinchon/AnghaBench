; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c_nfs_fscache_clear_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c_nfs_fscache_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_fscache_inode_auxdata = type { i8*, i8* }
%struct.nfs_inode = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fscache_cookie = type { i32 }

@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"NFS: clear cookie (0x%p/0x%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_fscache_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nfs_fscache_inode_auxdata, align 8
  %4 = alloca %struct.nfs_inode*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.nfs_inode* @NFS_I(%struct.inode* %6)
  store %struct.nfs_inode* %7, %struct.nfs_inode** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.fscache_cookie* @nfs_i_fscache(%struct.inode* %8)
  store %struct.fscache_cookie* %9, %struct.fscache_cookie** %5, align 8
  %10 = load i32, i32* @FSCACHE, align 4
  %11 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %12 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %13 = call i32 @dfprintk(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.nfs_inode* %11, %struct.fscache_cookie* %12)
  %14 = call i32 @memset(%struct.nfs_fscache_inode_auxdata* %3, i32 0, i32 16)
  %15 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @timespec64_to_timespec(i32 %18)
  %20 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %3, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %22 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @timespec64_to_timespec(i32 %24)
  %26 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %3, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %28 = call i32 @fscache_relinquish_cookie(%struct.fscache_cookie* %27, %struct.nfs_fscache_inode_auxdata* %3, i32 0)
  %29 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local %struct.fscache_cookie* @nfs_i_fscache(%struct.inode*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.nfs_inode*, %struct.fscache_cookie*) #1

declare dso_local i32 @memset(%struct.nfs_fscache_inode_auxdata*, i32, i32) #1

declare dso_local i8* @timespec64_to_timespec(i32) #1

declare dso_local i32 @fscache_relinquish_cookie(%struct.fscache_cookie*, %struct.nfs_fscache_inode_auxdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
