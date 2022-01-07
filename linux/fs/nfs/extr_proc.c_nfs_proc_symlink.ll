; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs_symlinkargs = type { i32, %struct.iattr*, %struct.page**, i32, i32, i32 }
%struct.rpc_message = type { %struct.nfs_symlinkargs*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_SYMLINK = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"NFS call  symlink %pd\0A\00", align 1
@NFS2_MAXPATHLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"NFS reply symlink: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)* @nfs_proc_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_symlink(%struct.inode* %0, %struct.dentry* %1, %struct.page* %2, i32 %3, %struct.iattr* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iattr*, align 8
  %11 = alloca %struct.nfs_fh*, align 8
  %12 = alloca %struct.nfs_fattr*, align 8
  %13 = alloca %struct.nfs_symlinkargs, align 8
  %14 = alloca %struct.rpc_message, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.iattr* %4, %struct.iattr** %10, align 8
  %16 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 0
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 1
  %19 = load %struct.iattr*, %struct.iattr** %10, align 8
  store %struct.iattr* %19, %struct.iattr** %18, align 8
  %20 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 2
  store %struct.page** %8, %struct.page*** %20, align 8
  %21 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 3
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %21, align 8
  %26 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 4
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %26, align 4
  %31 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 5
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @NFS_FH(%struct.inode* %32)
  store i32 %33, i32* %31, align 8
  %34 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  store %struct.nfs_symlinkargs* %13, %struct.nfs_symlinkargs** %34, align 8
  %35 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  %36 = load i32*, i32** @nfs_procedures, align 8
  %37 = load i64, i64* @NFSPROC_SYMLINK, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %35, align 8
  %39 = load i32, i32* @ENAMETOOLONG, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %15, align 4
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.dentry* %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @NFS2_MAXPATHLEN, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %5
  br label %77

47:                                               ; preds = %5
  %48 = call %struct.nfs_fh* (...) @nfs_alloc_fhandle()
  store %struct.nfs_fh* %48, %struct.nfs_fh** %11, align 8
  %49 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %49, %struct.nfs_fattr** %12, align 8
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %15, align 4
  %52 = load %struct.nfs_fh*, %struct.nfs_fh** %11, align 8
  %53 = icmp eq %struct.nfs_fh* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load %struct.nfs_fattr*, %struct.nfs_fattr** %12, align 8
  %56 = icmp eq %struct.nfs_fattr* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %47
  br label %72

58:                                               ; preds = %54
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = call i32 @NFS_CLIENT(%struct.inode* %59)
  %61 = call i32 @rpc_call_sync(i32 %60, %struct.rpc_message* %14, i32 0)
  store i32 %61, i32* %15, align 4
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call i32 @nfs_mark_for_revalidate(%struct.inode* %62)
  %64 = load i32, i32* %15, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.dentry*, %struct.dentry** %7, align 8
  %68 = load %struct.nfs_fh*, %struct.nfs_fh** %11, align 8
  %69 = load %struct.nfs_fattr*, %struct.nfs_fattr** %12, align 8
  %70 = call i32 @nfs_instantiate(%struct.dentry* %67, %struct.nfs_fh* %68, %struct.nfs_fattr* %69, i32* null)
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %66, %58
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.nfs_fattr*, %struct.nfs_fattr** %12, align 8
  %74 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %73)
  %75 = load %struct.nfs_fh*, %struct.nfs_fh** %11, align 8
  %76 = call i32 @nfs_free_fhandle(%struct.nfs_fh* %75)
  br label %77

77:                                               ; preds = %72, %46
  %78 = load i32, i32* %15, align 4
  %79 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %15, align 4
  ret i32 %80
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.nfs_fh* @nfs_alloc_fhandle(...) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

declare dso_local i32 @nfs_instantiate(%struct.dentry*, %struct.nfs_fh*, %struct.nfs_fattr*, i32*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_fhandle(%struct.nfs_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
