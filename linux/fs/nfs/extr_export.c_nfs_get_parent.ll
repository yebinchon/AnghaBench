; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_export.c_nfs_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_export.c_nfs_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.nfs_server = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfs_rpc_ops* }
%struct.nfs_rpc_ops = type { i32 (%struct.inode.0*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)* }
%struct.inode.0 = type opaque
%struct.nfs_fh = type opaque
%struct.nfs_fattr = type opaque
%struct.nfs4_label = type opaque
%struct.nfs_fattr.1 = type { i32 }
%struct.nfs4_label.2 = type { i32 }
%struct.nfs_fh.3 = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @nfs_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nfs_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca %struct.nfs_fattr.1*, align 8
  %10 = alloca %struct.nfs4_label.2*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.nfs_rpc_ops*, align 8
  %13 = alloca %struct.nfs_fh.3, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = call %struct.inode* @d_inode(%struct.dentry* %14)
  store %struct.inode* %15, %struct.inode** %5, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = call %struct.nfs_server* @NFS_SB(%struct.super_block* %19)
  store %struct.nfs_server* %20, %struct.nfs_server** %8, align 8
  store %struct.nfs_fattr.1* null, %struct.nfs_fattr.1** %9, align 8
  store %struct.nfs4_label.2* null, %struct.nfs4_label.2** %10, align 8
  %21 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %22 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.nfs_rpc_ops*, %struct.nfs_rpc_ops** %24, align 8
  store %struct.nfs_rpc_ops* %25, %struct.nfs_rpc_ops** %12, align 8
  %26 = load %struct.nfs_rpc_ops*, %struct.nfs_rpc_ops** %12, align 8
  %27 = getelementptr inbounds %struct.nfs_rpc_ops, %struct.nfs_rpc_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.inode.0*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)*, i32 (%struct.inode.0*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)** %27, align 8
  %29 = icmp ne i32 (%struct.inode.0*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.dentry* @ERR_PTR(i32 %32)
  store %struct.dentry* %33, %struct.dentry** %2, align 8
  br label %84

34:                                               ; preds = %1
  %35 = call %struct.nfs_fattr.1* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr.1* %35, %struct.nfs_fattr.1** %9, align 8
  %36 = load %struct.nfs_fattr.1*, %struct.nfs_fattr.1** %9, align 8
  %37 = icmp eq %struct.nfs_fattr.1* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.dentry* @ERR_PTR(i32 %40)
  store %struct.dentry* %41, %struct.dentry** %11, align 8
  br label %82

42:                                               ; preds = %34
  %43 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.nfs4_label.2* @nfs4_label_alloc(%struct.nfs_server* %43, i32 %44)
  store %struct.nfs4_label.2* %45, %struct.nfs4_label.2** %10, align 8
  %46 = load %struct.nfs4_label.2*, %struct.nfs4_label.2** %10, align 8
  %47 = call i64 @IS_ERR(%struct.nfs4_label.2* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.nfs4_label.2*, %struct.nfs4_label.2** %10, align 8
  %51 = call %struct.dentry* @ERR_CAST(%struct.nfs4_label.2* %50)
  store %struct.dentry* %51, %struct.dentry** %11, align 8
  br label %79

52:                                               ; preds = %42
  %53 = load %struct.nfs_rpc_ops*, %struct.nfs_rpc_ops** %12, align 8
  %54 = getelementptr inbounds %struct.nfs_rpc_ops, %struct.nfs_rpc_ops* %53, i32 0, i32 0
  %55 = load i32 (%struct.inode.0*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)*, i32 (%struct.inode.0*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)** %54, align 8
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = bitcast %struct.inode* %56 to %struct.inode.0*
  %58 = bitcast %struct.nfs_fh.3* %13 to %struct.nfs_fh*
  %59 = load %struct.nfs_fattr.1*, %struct.nfs_fattr.1** %9, align 8
  %60 = bitcast %struct.nfs_fattr.1* %59 to %struct.nfs_fattr*
  %61 = load %struct.nfs4_label.2*, %struct.nfs4_label.2** %10, align 8
  %62 = bitcast %struct.nfs4_label.2* %61 to %struct.nfs4_label*
  %63 = call i32 %55(%struct.inode.0* %57, %struct.nfs_fh* %58, %struct.nfs_fattr* %60, %struct.nfs4_label* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load i32, i32* %4, align 4
  %68 = call %struct.dentry* @ERR_PTR(i32 %67)
  store %struct.dentry* %68, %struct.dentry** %11, align 8
  br label %76

69:                                               ; preds = %52
  %70 = load %struct.super_block*, %struct.super_block** %7, align 8
  %71 = load %struct.nfs_fattr.1*, %struct.nfs_fattr.1** %9, align 8
  %72 = load %struct.nfs4_label.2*, %struct.nfs4_label.2** %10, align 8
  %73 = call %struct.inode* @nfs_fhget(%struct.super_block* %70, %struct.nfs_fh.3* %13, %struct.nfs_fattr.1* %71, %struct.nfs4_label.2* %72)
  store %struct.inode* %73, %struct.inode** %6, align 8
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = call %struct.dentry* @d_obtain_alias(%struct.inode* %74)
  store %struct.dentry* %75, %struct.dentry** %11, align 8
  br label %76

76:                                               ; preds = %69, %66
  %77 = load %struct.nfs4_label.2*, %struct.nfs4_label.2** %10, align 8
  %78 = call i32 @nfs4_label_free(%struct.nfs4_label.2* %77)
  br label %79

79:                                               ; preds = %76, %49
  %80 = load %struct.nfs_fattr.1*, %struct.nfs_fattr.1** %9, align 8
  %81 = call i32 @nfs_free_fattr(%struct.nfs_fattr.1* %80)
  br label %82

82:                                               ; preds = %79, %38
  %83 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %83, %struct.dentry** %2, align 8
  br label %84

84:                                               ; preds = %82, %30
  %85 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %85
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.nfs_server* @NFS_SB(%struct.super_block*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.nfs_fattr.1* @nfs_alloc_fattr(...) #1

declare dso_local %struct.nfs4_label.2* @nfs4_label_alloc(%struct.nfs_server*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_label.2*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.nfs4_label.2*) #1

declare dso_local %struct.inode* @nfs_fhget(%struct.super_block*, %struct.nfs_fh.3*, %struct.nfs_fattr.1*, %struct.nfs4_label.2*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

declare dso_local i32 @nfs4_label_free(%struct.nfs4_label.2*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
