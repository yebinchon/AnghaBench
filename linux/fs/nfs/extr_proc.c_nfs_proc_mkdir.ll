; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs_createdata = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rpc_message = type { %struct.TYPE_2__*, i32*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_MKDIR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"NFS call  mkdir %pd\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"NFS reply mkdir: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.iattr*)* @nfs_proc_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_mkdir(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca %struct.nfs_createdata*, align 8
  %8 = alloca %struct.rpc_message, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.iattr* %2, %struct.iattr** %6, align 8
  %10 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %10, align 8
  %11 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 2
  %13 = load i32*, i32** @nfs_procedures, align 8
  %14 = load i64, i64* @NFSPROC_MKDIR, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %12, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = ptrtoint %struct.dentry* %18 to i32
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = load %struct.iattr*, %struct.iattr** %6, align 8
  %24 = call %struct.nfs_createdata* @nfs_alloc_createdata(%struct.inode* %21, %struct.dentry* %22, %struct.iattr* %23)
  store %struct.nfs_createdata* %24, %struct.nfs_createdata** %7, align 8
  %25 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %26 = icmp eq %struct.nfs_createdata* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %56

28:                                               ; preds = %3
  %29 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %30 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 1
  store i32* %30, i32** %31, align 8
  %32 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %33 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 0
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i32 @NFS_CLIENT(%struct.inode* %35)
  %37 = call i32 @rpc_call_sync(i32 %36, %struct.rpc_message* %8, i32 0)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call i32 @nfs_mark_for_revalidate(%struct.inode* %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %28
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %45 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %49 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nfs_instantiate(%struct.dentry* %43, i32 %47, i32 %51, i32* null)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %42, %28
  %54 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %55 = call i32 @nfs_free_createdata(%struct.nfs_createdata* %54)
  br label %56

56:                                               ; preds = %53, %27
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.nfs_createdata* @nfs_alloc_createdata(%struct.inode*, %struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

declare dso_local i32 @nfs_instantiate(%struct.dentry*, i32, i32, i32*) #1

declare dso_local i32 @nfs_free_createdata(%struct.nfs_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
