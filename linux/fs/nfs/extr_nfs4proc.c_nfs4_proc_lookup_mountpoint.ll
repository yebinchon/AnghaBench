; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_lookup_mountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_lookup_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_clnt* @nfs4_proc_lookup_mountpoint(%struct.inode* %0, %struct.qstr* %1, %struct.nfs_fh* %2, %struct.nfs_fattr* %3) #0 {
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.nfs_fh*, align 8
  %9 = alloca %struct.nfs_fattr*, align 8
  %10 = alloca %struct.rpc_clnt*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store %struct.nfs_fh* %2, %struct.nfs_fh** %8, align 8
  store %struct.nfs_fattr* %3, %struct.nfs_fattr** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.rpc_clnt* @NFS_CLIENT(%struct.inode* %12)
  store %struct.rpc_clnt* %13, %struct.rpc_clnt** %10, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = load %struct.qstr*, %struct.qstr** %7, align 8
  %16 = load %struct.nfs_fh*, %struct.nfs_fh** %8, align 8
  %17 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %18 = call i32 @nfs4_proc_lookup_common(%struct.rpc_clnt** %10, %struct.inode* %14, %struct.qstr* %15, %struct.nfs_fh* %16, %struct.nfs_fattr* %17, i32* null)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.rpc_clnt* @ERR_PTR(i32 %22)
  store %struct.rpc_clnt* %23, %struct.rpc_clnt** %5, align 8
  br label %36

24:                                               ; preds = %4
  %25 = load %struct.rpc_clnt*, %struct.rpc_clnt** %10, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call %struct.rpc_clnt* @NFS_CLIENT(%struct.inode* %26)
  %28 = icmp eq %struct.rpc_clnt* %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.rpc_clnt*, %struct.rpc_clnt** %10, align 8
  %31 = call %struct.rpc_clnt* @rpc_clone_client(%struct.rpc_clnt* %30)
  br label %34

32:                                               ; preds = %24
  %33 = load %struct.rpc_clnt*, %struct.rpc_clnt** %10, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi %struct.rpc_clnt* [ %31, %29 ], [ %33, %32 ]
  store %struct.rpc_clnt* %35, %struct.rpc_clnt** %5, align 8
  br label %36

36:                                               ; preds = %34, %21
  %37 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  ret %struct.rpc_clnt* %37
}

declare dso_local %struct.rpc_clnt* @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs4_proc_lookup_common(%struct.rpc_clnt**, %struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*, i32*) #1

declare dso_local %struct.rpc_clnt* @ERR_PTR(i32) #1

declare dso_local %struct.rpc_clnt* @rpc_clone_client(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
