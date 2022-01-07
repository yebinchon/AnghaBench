; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_umount_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_umount_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.nfs_server = type { %struct.rpc_clnt*, %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_umount_begin(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.rpc_clnt*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.nfs_server* @NFS_SB(%struct.super_block* %5)
  store %struct.nfs_server* %6, %struct.nfs_server** %3, align 8
  %7 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %7, i32 0, i32 1
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  store %struct.rpc_clnt* %9, %struct.rpc_clnt** %4, align 8
  %10 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %11 = call i32 @IS_ERR(%struct.rpc_clnt* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %15 = call i32 @rpc_killall_tasks(%struct.rpc_clnt* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 0
  %19 = load %struct.rpc_clnt*, %struct.rpc_clnt** %18, align 8
  store %struct.rpc_clnt* %19, %struct.rpc_clnt** %4, align 8
  %20 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %21 = call i32 @IS_ERR(%struct.rpc_clnt* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %25 = call i32 @rpc_killall_tasks(%struct.rpc_clnt* %24)
  br label %26

26:                                               ; preds = %23, %16
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SB(%struct.super_block*) #1

declare dso_local i32 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_killall_tasks(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
