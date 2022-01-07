; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs4_submount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs4_submount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.nfs_server = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.dentry = type { %struct.qstr }
%struct.qstr = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.inode = type { i32 }
%struct.rpc_clnt = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@NFS_ATTR_FATTR_V4_REFERRAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @nfs4_submount(%struct.nfs_server* %0, %struct.dentry* %1, %struct.nfs_fh* %2, %struct.nfs_fattr* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.nfs_fh*, align 8
  %9 = alloca %struct.nfs_fattr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.qstr*, align 8
  %14 = alloca %struct.rpc_clnt*, align 8
  %15 = alloca %struct.vfsmount*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.nfs_fh* %2, %struct.nfs_fh** %8, align 8
  store %struct.nfs_fattr* %3, %struct.nfs_fattr** %9, align 8
  %16 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %17 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = call %struct.dentry* @dget_parent(%struct.dentry* %23)
  store %struct.dentry* %24, %struct.dentry** %11, align 8
  %25 = load %struct.dentry*, %struct.dentry** %11, align 8
  %26 = call %struct.inode* @d_inode(%struct.dentry* %25)
  store %struct.inode* %26, %struct.inode** %12, align 8
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  store %struct.qstr* %28, %struct.qstr** %13, align 8
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = load %struct.qstr*, %struct.qstr** %13, align 8
  %31 = load %struct.nfs_fh*, %struct.nfs_fh** %8, align 8
  %32 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %33 = call %struct.rpc_clnt* @nfs4_proc_lookup_mountpoint(%struct.inode* %29, %struct.qstr* %30, %struct.nfs_fh* %31, %struct.nfs_fattr* %32)
  store %struct.rpc_clnt* %33, %struct.rpc_clnt** %14, align 8
  %34 = load %struct.dentry*, %struct.dentry** %11, align 8
  %35 = call i32 @dput(%struct.dentry* %34)
  %36 = load %struct.rpc_clnt*, %struct.rpc_clnt** %14, align 8
  %37 = call i64 @IS_ERR(%struct.rpc_clnt* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load %struct.rpc_clnt*, %struct.rpc_clnt** %14, align 8
  %41 = call %struct.vfsmount* @ERR_CAST(%struct.rpc_clnt* %40)
  store %struct.vfsmount* %41, %struct.vfsmount** %5, align 8
  br label %77

42:                                               ; preds = %4
  %43 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %44 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NFS_ATTR_FATTR_V4_REFERRAL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.rpc_clnt*, %struct.rpc_clnt** %14, align 8
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = call %struct.vfsmount* @nfs_do_refmount(%struct.rpc_clnt* %50, %struct.dentry* %51)
  store %struct.vfsmount* %52, %struct.vfsmount** %15, align 8
  br label %73

53:                                               ; preds = %42
  %54 = load %struct.rpc_clnt*, %struct.rpc_clnt** %14, align 8
  %55 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.rpc_clnt*, %struct.rpc_clnt** %14, align 8
  %63 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %61, %53
  %68 = load %struct.dentry*, %struct.dentry** %7, align 8
  %69 = load %struct.nfs_fh*, %struct.nfs_fh** %8, align 8
  %70 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call %struct.vfsmount* @nfs_do_submount(%struct.dentry* %68, %struct.nfs_fh* %69, %struct.nfs_fattr* %70, i64 %71)
  store %struct.vfsmount* %72, %struct.vfsmount** %15, align 8
  br label %73

73:                                               ; preds = %67, %49
  %74 = load %struct.rpc_clnt*, %struct.rpc_clnt** %14, align 8
  %75 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %74)
  %76 = load %struct.vfsmount*, %struct.vfsmount** %15, align 8
  store %struct.vfsmount* %76, %struct.vfsmount** %5, align 8
  br label %77

77:                                               ; preds = %73, %39
  %78 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  ret %struct.vfsmount* %78
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.rpc_clnt* @nfs4_proc_lookup_mountpoint(%struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local %struct.vfsmount* @ERR_CAST(%struct.rpc_clnt*) #1

declare dso_local %struct.vfsmount* @nfs_do_refmount(%struct.rpc_clnt*, %struct.dentry*) #1

declare dso_local %struct.vfsmount* @nfs_do_submount(%struct.dentry*, %struct.nfs_fh*, %struct.nfs_fattr*, i64) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
