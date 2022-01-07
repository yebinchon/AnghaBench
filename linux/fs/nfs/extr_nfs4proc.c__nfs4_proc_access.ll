; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_access_entry = type { i32, i32 }
%struct.nfs_server = type { i32, i32 }
%struct.nfs4_accessargs = type { i32, i32, i32, i32 }
%struct.nfs4_accessres = type { i32*, i32, i32, %struct.nfs_server* }
%struct.rpc_message = type { i32, %struct.nfs4_accessres*, %struct.nfs4_accessargs*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_ACCESS = common dso_local global i64 0, align 8
@FMODE_READ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_access_entry*)* @_nfs4_proc_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_access(%struct.inode* %0, %struct.nfs_access_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_access_entry*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs4_accessargs, align 4
  %8 = alloca %struct.nfs4_accessres, align 8
  %9 = alloca %struct.rpc_message, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nfs_access_entry* %1, %struct.nfs_access_entry** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %11)
  store %struct.nfs_server* %12, %struct.nfs_server** %6, align 8
  %13 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 2
  %16 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %17 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 3
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @NFS_FH(%struct.inode* %20)
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 3
  %26 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  store %struct.nfs_server* %26, %struct.nfs_server** %25, align 8
  %27 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 0
  %28 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 1
  store %struct.nfs4_accessres* %8, %struct.nfs4_accessres** %31, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 2
  store %struct.nfs4_accessargs* %7, %struct.nfs4_accessargs** %32, align 8
  %33 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 3
  %34 = load i32*, i32** @nfs4_procedures, align 8
  %35 = load i64, i64* @NFSPROC4_CLNT_ACCESS, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %33, align 8
  store i32 0, i32* %10, align 4
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = load i32, i32* @FMODE_READ, align 4
  %39 = call i32 @nfs4_have_delegation(%struct.inode* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %2
  %42 = call i32* (...) @nfs_alloc_fattr()
  %43 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 0
  store i32* %42, i32** %43, align 8
  %44 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %84

50:                                               ; preds = %41
  %51 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %52 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %2
  %56 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %57 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %60 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %7, i32 0, i32 0
  %61 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 2
  %62 = call i32 @nfs4_call_sync(i32 %58, %struct.nfs_server* %59, %struct.rpc_message* %9, i32* %60, i32* %61, i32 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %55
  %66 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %67 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @nfs_access_set_mask(%struct.nfs_access_entry* %66, i32 %68)
  %70 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @nfs_refresh_inode(%struct.inode* %74, i32* %76)
  br label %78

78:                                               ; preds = %73, %65
  br label %79

79:                                               ; preds = %78, %55
  %80 = getelementptr inbounds %struct.nfs4_accessres, %struct.nfs4_accessres* %8, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @nfs_free_fattr(i32* %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %47
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs4_have_delegation(%struct.inode*, i32) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @nfs_access_set_mask(%struct.nfs_access_entry*, i32) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
