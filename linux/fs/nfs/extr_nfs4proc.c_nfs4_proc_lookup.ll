; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.rpc_clnt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)* @nfs4_proc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_lookup(%struct.inode* %0, %struct.qstr* %1, %struct.nfs_fh* %2, %struct.nfs_fattr* %3, %struct.nfs4_label* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.nfs_fh*, align 8
  %9 = alloca %struct.nfs_fattr*, align 8
  %10 = alloca %struct.nfs4_label*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rpc_clnt*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store %struct.nfs_fh* %2, %struct.nfs_fh** %8, align 8
  store %struct.nfs_fattr* %3, %struct.nfs_fattr** %9, align 8
  store %struct.nfs4_label* %4, %struct.nfs4_label** %10, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.rpc_clnt* @NFS_CLIENT(%struct.inode* %13)
  store %struct.rpc_clnt* %14, %struct.rpc_clnt** %12, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = load %struct.qstr*, %struct.qstr** %7, align 8
  %17 = load %struct.nfs_fh*, %struct.nfs_fh** %8, align 8
  %18 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %19 = load %struct.nfs4_label*, %struct.nfs4_label** %10, align 8
  %20 = call i32 @nfs4_proc_lookup_common(%struct.rpc_clnt** %12, %struct.inode* %15, %struct.qstr* %16, %struct.nfs_fh* %17, %struct.nfs_fattr* %18, %struct.nfs4_label* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call %struct.rpc_clnt* @NFS_CLIENT(%struct.inode* %22)
  %24 = icmp ne %struct.rpc_clnt* %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %27 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %26)
  %28 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %29 = call i32 @nfs_fixup_secinfo_attributes(%struct.nfs_fattr* %28)
  br label %30

30:                                               ; preds = %25, %5
  %31 = load i32, i32* %11, align 4
  ret i32 %31
}

declare dso_local %struct.rpc_clnt* @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs4_proc_lookup_common(%struct.rpc_clnt**, %struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

declare dso_local i32 @nfs_fixup_secinfo_attributes(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
