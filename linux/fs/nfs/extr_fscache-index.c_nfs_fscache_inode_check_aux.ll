; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_fscache-index.c_nfs_fscache_inode_check_aux.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_fscache-index.c_nfs_fscache_inode_check_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fscache_inode_auxdata = type { i32, i8*, i8* }
%struct.nfs_inode = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@FSCACHE_CHECKAUX_OBSOLETE = common dso_local global i32 0, align 4
@FSCACHE_CHECKAUX_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @nfs_fscache_inode_check_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_fscache_inode_check_aux(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_fscache_inode_auxdata, align 8
  %11 = alloca %struct.nfs_inode*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.nfs_inode*
  store %struct.nfs_inode* %13, %struct.nfs_inode** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 24
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %18, i32* %5, align 4
  br label %57

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.nfs_fscache_inode_auxdata* %10, i32 0, i32 24)
  %21 = load %struct.nfs_inode*, %struct.nfs_inode** %11, align 8
  %22 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @timespec64_to_timespec(i32 %24)
  %26 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %10, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load %struct.nfs_inode*, %struct.nfs_inode** %11, align 8
  %28 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @timespec64_to_timespec(i32 %30)
  %32 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %10, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load %struct.nfs_inode*, %struct.nfs_inode** %11, align 8
  %34 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %33, i32 0, i32 0
  %35 = call %struct.TYPE_9__* @NFS_SERVER(%struct.TYPE_8__* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %48

43:                                               ; preds = %19
  %44 = load %struct.nfs_inode*, %struct.nfs_inode** %11, align 8
  %45 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %44, i32 0, i32 0
  %46 = call i32 @inode_peek_iversion_raw(%struct.TYPE_8__* %45)
  %47 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %10, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %19
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @memcmp(i8* %49, %struct.nfs_fscache_inode_auxdata* %10, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @FSCACHE_CHECKAUX_OKAY, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %53, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.nfs_fscache_inode_auxdata*, i32, i32) #1

declare dso_local i8* @timespec64_to_timespec(i32) #1

declare dso_local %struct.TYPE_9__* @NFS_SERVER(%struct.TYPE_8__*) #1

declare dso_local i32 @inode_peek_iversion_raw(%struct.TYPE_8__*) #1

declare dso_local i64 @memcmp(i8*, %struct.nfs_fscache_inode_auxdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
