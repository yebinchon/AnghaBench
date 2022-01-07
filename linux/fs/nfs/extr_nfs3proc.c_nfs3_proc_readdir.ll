; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.cred = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.nfs3_readdirargs = type { i32, i32, %struct.page**, i32, i64, i32 }
%struct.nfs3_readdirres = type { i32, i32*, i32* }
%struct.rpc_message = type { i32*, %struct.cred*, %struct.nfs3_readdirres*, %struct.nfs3_readdirargs* }
%struct.TYPE_2__ = type { i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_READDIR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NFS3PROC_READDIRPLUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"NFS call  readdir%s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"NFS reply readdir%s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.cred*, i64, %struct.page**, i32, i32)* @nfs3_proc_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_readdir(%struct.dentry* %0, %struct.cred* %1, i64 %2, %struct.page** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.nfs3_readdirargs, align 8
  %16 = alloca %struct.nfs3_readdirres, align 8
  %17 = alloca %struct.rpc_message, align 8
  %18 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store %struct.cred* %1, %struct.cred** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.page** %3, %struct.page*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = call %struct.inode* @d_inode(%struct.dentry* %19)
  store %struct.inode* %20, %struct.inode** %13, align 8
  %21 = load %struct.inode*, %struct.inode** %13, align 8
  %22 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %14, align 8
  %25 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 0
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 1
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 2
  %30 = load %struct.page**, %struct.page*** %10, align 8
  store %struct.page** %30, %struct.page*** %29, align 8
  %31 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 3
  %32 = load i32*, i32** %14, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 8
  %35 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 4
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 5
  %38 = load %struct.inode*, %struct.inode** %13, align 8
  %39 = call i32 @NFS_FH(%struct.inode* %38)
  store i32 %39, i32* %37, align 8
  %40 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 0
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 2
  %44 = load i32*, i32** %14, align 8
  store i32* %44, i32** %43, align 8
  %45 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 0
  %46 = load i32*, i32** @nfs3_procedures, align 8
  %47 = load i64, i64* @NFS3PROC_READDIR, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %45, align 8
  %49 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 1
  %50 = load %struct.cred*, %struct.cred** %8, align 8
  store %struct.cred* %50, %struct.cred** %49, align 8
  %51 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 2
  store %struct.nfs3_readdirres* %16, %struct.nfs3_readdirres** %51, align 8
  %52 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 3
  store %struct.nfs3_readdirargs* %15, %struct.nfs3_readdirargs** %52, align 8
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %6
  %58 = load i32*, i32** @nfs3_procedures, align 8
  %59 = load i64, i64* @NFS3PROC_READDIRPLUS, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 0
  store i32* %60, i32** %61, align 8
  br label %62

62:                                               ; preds = %57, %6
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %66, i32 %68)
  %70 = call i32* (...) @nfs_alloc_fattr()
  %71 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 1
  store i32* %70, i32** %71, align 8
  %72 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %89

76:                                               ; preds = %62
  %77 = load %struct.inode*, %struct.inode** %13, align 8
  %78 = call i32 @NFS_CLIENT(%struct.inode* %77)
  %79 = call i32 @rpc_call_sync(i32 %78, %struct.rpc_message* %17, i32 0)
  store i32 %79, i32* %18, align 4
  %80 = load %struct.inode*, %struct.inode** %13, align 8
  %81 = call i32 @nfs_invalidate_atime(%struct.inode* %80)
  %82 = load %struct.inode*, %struct.inode** %13, align 8
  %83 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @nfs_refresh_inode(%struct.inode* %82, i32* %84)
  %86 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @nfs_free_fattr(i32* %87)
  br label %89

89:                                               ; preds = %76, %75
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %93, i32 %94)
  %96 = load i32, i32* %18, align 4
  ret i32 %96
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i8*, i32) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_invalidate_atime(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
