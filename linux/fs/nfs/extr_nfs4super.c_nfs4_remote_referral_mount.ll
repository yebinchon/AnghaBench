; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4super.c_nfs4_remote_referral_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4super.c_nfs4_remote_referral_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_system_type = type { i32 }
%struct.nfs_mount_info = type { i8*, i32*, i32, i32 }
%struct.nfs_server = type { i32 }

@nfs_clone_sb_security = common dso_local global i32 0, align 4
@nfs_fill_super = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"--> nfs4_referral_get_sb()\0A\00", align 1
@nfs_v4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* @nfs4_remote_referral_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nfs4_remote_referral_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.file_system_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nfs_mount_info, align 8
  %10 = alloca %struct.nfs_server*, align 8
  %11 = alloca %struct.dentry*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 0
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 2
  %16 = load i32, i32* @nfs_clone_sb_security, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 3
  %18 = load i32, i32* @nfs_fill_super, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.dentry* @ERR_PTR(i32 %20)
  store %struct.dentry* %21, %struct.dentry** %11, align 8
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = call i32* (...) @nfs_alloc_fhandle()
  %24 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  store i32* %23, i32** %24, align 8
  %25 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %4
  br label %50

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call %struct.nfs_server* @nfs4_create_referral_server(i8* %35, i32* %37)
  store %struct.nfs_server* %38, %struct.nfs_server** %10, align 8
  %39 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %40 = call i64 @IS_ERR(%struct.nfs_server* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %44 = call %struct.dentry* @ERR_CAST(%struct.nfs_server* %43)
  store %struct.dentry* %44, %struct.dentry** %11, align 8
  br label %50

45:                                               ; preds = %33
  %46 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call %struct.dentry* @nfs_fs_mount_common(%struct.nfs_server* %46, i32 %47, i8* %48, %struct.nfs_mount_info* %9, i32* @nfs_v4)
  store %struct.dentry* %49, %struct.dentry** %11, align 8
  br label %50

50:                                               ; preds = %45, %42, %32
  %51 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @nfs_free_fhandle(i32* %52)
  %54 = load %struct.dentry*, %struct.dentry** %11, align 8
  ret %struct.dentry* %54
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32* @nfs_alloc_fhandle(...) #1

declare dso_local %struct.nfs_server* @nfs4_create_referral_server(i8*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_server*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.nfs_server*) #1

declare dso_local %struct.dentry* @nfs_fs_mount_common(%struct.nfs_server*, i32, i8*, %struct.nfs_mount_info*, i32*) #1

declare dso_local i32 @nfs_free_fhandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
