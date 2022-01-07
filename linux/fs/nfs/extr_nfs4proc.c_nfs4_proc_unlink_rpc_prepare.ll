; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlink_rpc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlink_rpc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_unlinkdata = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.nfs_unlinkdata*)* @nfs4_proc_unlink_rpc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_proc_unlink_rpc_prepare(%struct.rpc_task* %0, %struct.nfs_unlinkdata* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.nfs_unlinkdata*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.nfs_unlinkdata* %1, %struct.nfs_unlinkdata** %4, align 8
  %5 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %6 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_8__* @NFS_SB(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %17 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %20 = call i32 @nfs4_setup_sequence(i32 %12, i32* %15, i32* %18, %struct.rpc_task* %19)
  ret void
}

declare dso_local i32 @nfs4_setup_sequence(i32, i32*, i32*, %struct.rpc_task*) #1

declare dso_local %struct.TYPE_8__* @NFS_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
