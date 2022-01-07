; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_access_entry = type { i32, i32 }
%struct.nfs3_accessargs = type { i32, i32 }
%struct.nfs3_accessres = type { i32*, i32 }
%struct.rpc_message = type { i32, %struct.nfs3_accessres*, %struct.nfs3_accessargs*, i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_ACCESS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"NFS call  access\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply access: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_access_entry*)* @nfs3_proc_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_access(%struct.inode* %0, %struct.nfs_access_entry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_access_entry*, align 8
  %5 = alloca %struct.nfs3_accessargs, align 4
  %6 = alloca %struct.nfs3_accessres, align 8
  %7 = alloca %struct.rpc_message, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_access_entry* %1, %struct.nfs_access_entry** %4, align 8
  %9 = getelementptr inbounds %struct.nfs3_accessargs, %struct.nfs3_accessargs* %5, i32 0, i32 0
  %10 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.nfs3_accessargs, %struct.nfs3_accessargs* %5, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i32 @NFS_FH(%struct.inode* %14)
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  %17 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 1
  store %struct.nfs3_accessres* %6, %struct.nfs3_accessres** %20, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 2
  store %struct.nfs3_accessargs* %5, %struct.nfs3_accessargs** %21, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 3
  %23 = load i32*, i32** @nfs3_procedures, align 8
  %24 = load i64, i64* @NFS3PROC_ACCESS, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %22, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  %28 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = call i32* (...) @nfs_alloc_fattr()
  %30 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %54

35:                                               ; preds = %2
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = call i32 @NFS_CLIENT(%struct.inode* %36)
  %38 = call i32 @rpc_call_sync(i32 %37, %struct.rpc_message* %7, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @nfs_refresh_inode(%struct.inode* %39, i32* %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %47 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @nfs_access_set_mask(%struct.nfs_access_entry* %46, i32 %48)
  br label %50

50:                                               ; preds = %45, %35
  %51 = getelementptr inbounds %struct.nfs3_accessres, %struct.nfs3_accessres* %6, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @nfs_free_fattr(i32* %52)
  br label %54

54:                                               ; preds = %50, %34
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_access_set_mask(%struct.nfs_access_entry*, i32) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
