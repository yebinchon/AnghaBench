; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_zap_caches_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_zap_caches_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_inode = type { i32, i32, i32 }

@NFSIOS_ATTRINVALIDATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATTR = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACCESS = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACL = common dso_local global i32 0, align 4
@NFS_INO_REVAL_PAGECACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @nfs_zap_caches_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_zap_caches_locked(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nfs_inode*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.nfs_inode* @NFS_I(%struct.inode* %5)
  store %struct.nfs_inode* %6, %struct.nfs_inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = load i32, i32* @NFSIOS_ATTRINVALIDATE, align 4
  %12 = call i32 @nfs_inc_stats(%struct.inode* %10, i32 %11)
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call i32 @NFS_MINATTRTIMEO(%struct.inode* %13)
  %15 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @jiffies, align 4
  %18 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call %struct.nfs_inode* @NFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @S_ISREG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @S_ISDIR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @S_ISLNK(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32, %28, %1
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %39 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @NFS_INO_INVALID_ACCESS, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @NFS_INO_INVALID_ACL, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @NFS_INO_REVAL_PAGECACHE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @nfs_set_cache_invalid(%struct.inode* %37, i32 %46)
  br label %58

48:                                               ; preds = %32
  %49 = load %struct.inode*, %struct.inode** %2, align 8
  %50 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %51 = load i32, i32* @NFS_INO_INVALID_ACCESS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @NFS_INO_INVALID_ACL, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @NFS_INO_REVAL_PAGECACHE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @nfs_set_cache_invalid(%struct.inode* %49, i32 %56)
  br label %58

58:                                               ; preds = %48, %36
  %59 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %60 = call i32 @nfs_zap_label_cache_locked(%struct.nfs_inode* %59)
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @NFS_MINATTRTIMEO(%struct.inode*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @nfs_set_cache_invalid(%struct.inode*, i32) #1

declare dso_local i32 @nfs_zap_label_cache_locked(%struct.nfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
