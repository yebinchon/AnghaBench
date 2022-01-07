; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_xdev_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_xdev_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type opaque
%struct.file_system_type = type { i32 }
%struct.nfs_clone_mount = type { i32, i32, i32, i32 }
%struct.nfs_mount_info = type { %struct.nfs_clone_mount*, i32, i32, i32 }
%struct.nfs_server = type { i32 }
%struct.nfs_subversion = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nfs_server* (%struct.TYPE_7__*, i32, i32, i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nfs_subversion* }

@nfs_clone_sb_security = common dso_local global i32 0, align 4
@nfs_clone_super = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"--> nfs_xdev_mount()\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"<-- nfs_xdev_mount() = %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* @nfs_xdev_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nfs_xdev_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.file_system_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nfs_clone_mount*, align 8
  %10 = alloca %struct.nfs_mount_info, align 8
  %11 = alloca %struct.nfs_server*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.nfs_subversion*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.nfs_clone_mount*
  store %struct.nfs_clone_mount* %15, %struct.nfs_clone_mount** %9, align 8
  %16 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %10, i32 0, i32 0
  %17 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %9, align 8
  store %struct.nfs_clone_mount* %17, %struct.nfs_clone_mount** %16, align 8
  %18 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %10, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %10, i32 0, i32 2
  %20 = load i32, i32* @nfs_clone_sb_security, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %10, i32 0, i32 3
  %22 = load i32, i32* @nfs_clone_super, align 4
  store i32 %22, i32* %21, align 8
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.nfs_server* @ERR_PTR(i32 %24)
  %26 = bitcast %struct.nfs_server* %25 to %struct.dentry*
  store %struct.dentry* %26, %struct.dentry** %12, align 8
  %27 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %9, align 8
  %28 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_7__* @NFS_SB(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.nfs_subversion*, %struct.nfs_subversion** %33, align 8
  store %struct.nfs_subversion* %34, %struct.nfs_subversion** %13, align 8
  %35 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %10, i32 0, i32 0
  %37 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %36, align 8
  %38 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %10, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load %struct.nfs_subversion*, %struct.nfs_subversion** %13, align 8
  %42 = getelementptr inbounds %struct.nfs_subversion, %struct.nfs_subversion* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.nfs_server* (%struct.TYPE_7__*, i32, i32, i32)*, %struct.nfs_server* (%struct.TYPE_7__*, i32, i32, i32)** %44, align 8
  %46 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %9, align 8
  %47 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_7__* @NFS_SB(i32 %48)
  %50 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %9, align 8
  %51 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %9, align 8
  %54 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %9, align 8
  %57 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.nfs_server* %45(%struct.TYPE_7__* %49, i32 %52, i32 %55, i32 %58)
  store %struct.nfs_server* %59, %struct.nfs_server** %11, align 8
  %60 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %61 = call i64 @IS_ERR(%struct.nfs_server* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %4
  %64 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %65 = call %struct.nfs_server* @ERR_CAST(%struct.nfs_server* %64)
  %66 = bitcast %struct.nfs_server* %65 to %struct.dentry*
  store %struct.dentry* %66, %struct.dentry** %12, align 8
  br label %74

67:                                               ; preds = %4
  %68 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.nfs_subversion*, %struct.nfs_subversion** %13, align 8
  %72 = call %struct.nfs_server* @nfs_fs_mount_common(%struct.nfs_server* %68, i32 %69, i8* %70, %struct.nfs_mount_info* %10, %struct.nfs_subversion* %71)
  %73 = bitcast %struct.nfs_server* %72 to %struct.dentry*
  store %struct.dentry* %73, %struct.dentry** %12, align 8
  br label %74

74:                                               ; preds = %67, %63
  %75 = load %struct.dentry*, %struct.dentry** %12, align 8
  %76 = bitcast %struct.dentry* %75 to %struct.nfs_server*
  %77 = call i64 @IS_ERR(%struct.nfs_server* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.dentry*, %struct.dentry** %12, align 8
  %81 = bitcast %struct.dentry* %80 to %struct.nfs_server*
  %82 = call i64 @PTR_ERR(%struct.nfs_server* %81)
  br label %84

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i64 [ %82, %79 ], [ 0, %83 ]
  %86 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load %struct.dentry*, %struct.dentry** %12, align 8
  ret %struct.dentry* %87
}

declare dso_local %struct.nfs_server* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_7__* @NFS_SB(i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @IS_ERR(%struct.nfs_server*) #1

declare dso_local %struct.nfs_server* @ERR_CAST(%struct.nfs_server*) #1

declare dso_local %struct.nfs_server* @nfs_fs_mount_common(%struct.nfs_server*, i32, i8*, %struct.nfs_mount_info*, %struct.nfs_subversion*) #1

declare dso_local i64 @PTR_ERR(%struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
