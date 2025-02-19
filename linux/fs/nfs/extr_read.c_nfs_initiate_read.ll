; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_initiate_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_initiate_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i32, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.rpc_message = type { i32 }
%struct.nfs_rpc_ops = type { i32 (%struct.nfs_pgio_header.0*, %struct.rpc_message*)* }
%struct.nfs_pgio_header.0 = type opaque
%struct.rpc_task_setup = type { i32 }

@NFS_RPC_SWAPFLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*, %struct.rpc_message*, %struct.nfs_rpc_ops*, %struct.rpc_task_setup*, i32)* @nfs_initiate_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_initiate_read(%struct.nfs_pgio_header* %0, %struct.rpc_message* %1, %struct.nfs_rpc_ops* %2, %struct.rpc_task_setup* %3, i32 %4) #0 {
  %6 = alloca %struct.nfs_pgio_header*, align 8
  %7 = alloca %struct.rpc_message*, align 8
  %8 = alloca %struct.nfs_rpc_ops*, align 8
  %9 = alloca %struct.rpc_task_setup*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %6, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %7, align 8
  store %struct.nfs_rpc_ops* %2, %struct.nfs_rpc_ops** %8, align 8
  store %struct.rpc_task_setup* %3, %struct.rpc_task_setup** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %14 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %13, i32 0, i32 2
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %11, align 8
  %16 = load %struct.inode*, %struct.inode** %11, align 8
  %17 = call i64 @IS_SWAPFILE(%struct.inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @NFS_RPC_SWAPFLAGS, align 4
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %9, align 8
  %26 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.nfs_rpc_ops*, %struct.nfs_rpc_ops** %8, align 8
  %30 = getelementptr inbounds %struct.nfs_rpc_ops, %struct.nfs_rpc_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.nfs_pgio_header.0*, %struct.rpc_message*)*, i32 (%struct.nfs_pgio_header.0*, %struct.rpc_message*)** %30, align 8
  %32 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %33 = bitcast %struct.nfs_pgio_header* %32 to %struct.nfs_pgio_header.0*
  %34 = load %struct.rpc_message*, %struct.rpc_message** %7, align 8
  %35 = call i32 %31(%struct.nfs_pgio_header.0* %33, %struct.rpc_message* %34)
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %38 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %41 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @trace_nfs_initiate_read(%struct.inode* %36, i32 %39, i32 %42)
  ret void
}

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i32 @trace_nfs_initiate_read(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
