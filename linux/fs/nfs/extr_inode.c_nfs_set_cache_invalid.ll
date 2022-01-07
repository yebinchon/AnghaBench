; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_set_cache_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_set_cache_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.nfs_inode = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.inode*, i32)* }

@FMODE_READ = common dso_local global i32 0, align 4
@NFS_INO_REVAL_FORCED = common dso_local global i64 0, align 8
@NFS_INO_INVALID_OTHER = common dso_local global i64 0, align 8
@NFS_INO_INVALID_CHANGE = common dso_local global i64 0, align 8
@NFS_INO_INVALID_SIZE = common dso_local global i64 0, align 8
@NFS_INO_REVAL_PAGECACHE = common dso_local global i64 0, align 8
@NFS_INO_INVALID_DATA = common dso_local global i64 0, align 8
@NFS_INO_DATA_INVAL_DEFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64)* @nfs_set_cache_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_set_cache_invalid(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.nfs_inode* @NFS_I(%struct.inode* %7)
  store %struct.nfs_inode* %8, %struct.nfs_inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (%struct.inode*, i32)*, i32 (%struct.inode*, i32)** %11, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load i32, i32* @FMODE_READ, align 4
  %15 = call i32 %12(%struct.inode* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @NFS_INO_REVAL_FORCED, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* @NFS_INO_INVALID_OTHER, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %4, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i64, i64* @NFS_INO_INVALID_CHANGE, align 8
  %30 = load i64, i64* @NFS_INO_INVALID_SIZE, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @NFS_INO_REVAL_PAGECACHE, align 8
  %33 = or i64 %31, %32
  %34 = xor i64 %33, -1
  %35 = load i64, i64* %4, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %28, %2
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i64, i64* @NFS_INO_INVALID_DATA, align 8
  %46 = load i64, i64* @NFS_INO_DATA_INVAL_DEFER, align 8
  %47 = or i64 %45, %46
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %4, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %44, %37
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %54 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @NFS_INO_INVALID_DATA, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = call i32 @nfs_fscache_invalidate(%struct.inode* %62)
  br label %64

64:                                               ; preds = %61, %51
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_fscache_invalidate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
