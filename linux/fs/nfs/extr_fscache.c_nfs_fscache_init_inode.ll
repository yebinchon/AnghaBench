; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c_nfs_fscache_init_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c_nfs_fscache_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.nfs_fscache_inode_auxdata = type { i32, i8*, i8* }
%struct.nfs_server = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nfs_inode = type { %struct.inode, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@nfs_fscache_inode_object_def = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_fscache_init_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nfs_fscache_inode_auxdata, align 8
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %6)
  store %struct.nfs_server* %7, %struct.nfs_server** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.nfs_inode* @NFS_I(%struct.inode* %8)
  store %struct.nfs_inode* %9, %struct.nfs_inode** %5, align 8
  %10 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %11 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %10, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @S_ISREG(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %1
  br label %75

23:                                               ; preds = %16
  %24 = call i32 @memset(%struct.nfs_fscache_inode_auxdata* %3, i32 0, i32 24)
  %25 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @timespec64_to_timespec(i32 %28)
  %30 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %3, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @timespec64_to_timespec(i32 %34)
  %36 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %3, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %37, i32 0, i32 0
  %39 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %52

47:                                               ; preds = %23
  %48 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %49 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %48, i32 0, i32 0
  %50 = call i32 @inode_peek_iversion_raw(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %3, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %23
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_8__* @NFS_SB(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %60 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %64 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %68 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %69 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32* @fscache_acquire_cookie(i32 %58, i32* @nfs_fscache_inode_object_def, i32 %62, i32 %66, %struct.nfs_fscache_inode_auxdata* %3, i32 24, %struct.nfs_inode* %67, i32 %71, i32 0)
  %73 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %74 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  br label %75

75:                                               ; preds = %52, %22
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @memset(%struct.nfs_fscache_inode_auxdata*, i32, i32) #1

declare dso_local i8* @timespec64_to_timespec(i32) #1

declare dso_local i32 @inode_peek_iversion_raw(%struct.inode*) #1

declare dso_local i32* @fscache_acquire_cookie(i32, i32*, i32, i32, %struct.nfs_fscache_inode_auxdata*, i32, %struct.nfs_inode*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @NFS_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
