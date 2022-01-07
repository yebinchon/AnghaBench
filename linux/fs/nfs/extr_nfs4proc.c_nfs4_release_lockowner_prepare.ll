; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_release_lockowner_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_release_lockowner_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_release_lockowner_data = type { i32, %struct.TYPE_5__, %struct.TYPE_6__, %struct.nfs_server* }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nfs_server = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs4_release_lockowner_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_release_lockowner_prepare(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs_release_lockowner_data*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.nfs_release_lockowner_data*
  store %struct.nfs_release_lockowner_data* %8, %struct.nfs_release_lockowner_data** %5, align 8
  %9 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %9, i32 0, i32 3
  %11 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  store %struct.nfs_server* %11, %struct.nfs_server** %6, align 8
  %12 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %13 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %22 = call i32 @nfs4_setup_sequence(%struct.TYPE_8__* %14, i32* %17, i32* %20, %struct.rpc_task* %21)
  %23 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %34 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  ret void
}

declare dso_local i32 @nfs4_setup_sequence(%struct.TYPE_8__*, i32*, i32*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
