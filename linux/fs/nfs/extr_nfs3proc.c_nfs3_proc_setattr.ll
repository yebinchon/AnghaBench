; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.inode = type { i32 }
%struct.nfs3_sattrargs = type { %struct.iattr*, i32 }
%struct.rpc_message = type { i32, %struct.nfs_fattr*, %struct.nfs3_sattrargs*, i32* }
%struct.TYPE_2__ = type { i32 }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_SETATTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"NFS call  setattr\0A\00", align 1
@ATTR_FILE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"NFS reply setattr: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nfs_fattr*, %struct.iattr*)* @nfs3_proc_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_setattr(%struct.dentry* %0, %struct.nfs_fattr* %1, %struct.iattr* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nfs_fattr*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs3_sattrargs, align 8
  %9 = alloca %struct.rpc_message, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %5, align 8
  store %struct.iattr* %2, %struct.iattr** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call %struct.inode* @d_inode(%struct.dentry* %11)
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = getelementptr inbounds %struct.nfs3_sattrargs, %struct.nfs3_sattrargs* %8, i32 0, i32 0
  %14 = load %struct.iattr*, %struct.iattr** %6, align 8
  store %struct.iattr* %14, %struct.iattr** %13, align 8
  %15 = getelementptr inbounds %struct.nfs3_sattrargs, %struct.nfs3_sattrargs* %8, i32 0, i32 1
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call i32 @NFS_FH(%struct.inode* %16)
  store i32 %17, i32* %15, align 8
  %18 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 1
  %20 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  store %struct.nfs_fattr* %20, %struct.nfs_fattr** %19, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 2
  store %struct.nfs3_sattrargs* %8, %struct.nfs3_sattrargs** %21, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 3
  %23 = load i32*, i32** @nfs3_procedures, align 8
  %24 = load i64, i64* @NFS3PROC_SETATTR, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %22, align 8
  %26 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.iattr*, %struct.iattr** %6, align 8
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ATTR_FILE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.iattr*, %struct.iattr** %6, align 8
  %35 = getelementptr inbounds %struct.iattr, %struct.iattr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nfs_file_cred(i32 %36)
  %38 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  br label %39

39:                                               ; preds = %33, %3
  %40 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %41 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %40)
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call i32 @NFS_CLIENT(%struct.inode* %42)
  %44 = call i32 @rpc_call_sync(i32 %43, %struct.rpc_message* %9, i32 0)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NFS_INO_INVALID_ACL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call i32 @nfs_zap_acl_cache(%struct.inode* %56)
  br label %58

58:                                               ; preds = %55, %47
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = load %struct.iattr*, %struct.iattr** %6, align 8
  %61 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %62 = call i32 @nfs_setattr_update_inode(%struct.inode* %59, %struct.iattr* %60, %struct.nfs_fattr* %61)
  br label %63

63:                                               ; preds = %58, %39
  %64 = load i32, i32* %10, align 4
  %65 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nfs_file_cred(i32) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_zap_acl_cache(%struct.inode*) #1

declare dso_local i32 @nfs_setattr_update_inode(%struct.inode*, %struct.iattr*, %struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
