; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_commit_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_commit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32 }
%struct.nfs_commit_data = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.rpc_task*, %struct.nfs_commit_data*)* }

@.str = private unnamed_addr constant [38 x i8] c"NFS: %5u nfs_commit_done (status %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs_commit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_commit_done(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs_commit_data*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.nfs_commit_data*
  store %struct.nfs_commit_data* %7, %struct.nfs_commit_data** %5, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_2__* @NFS_PROTO(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.rpc_task*, %struct.nfs_commit_data*)*, i32 (%struct.rpc_task*, %struct.nfs_commit_data*)** %19, align 8
  %21 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %22 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %23 = call i32 %20(%struct.rpc_task* %21, %struct.nfs_commit_data* %22)
  %24 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %25 = call i32 @trace_nfs_commit_done(%struct.nfs_commit_data* %24)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @NFS_PROTO(i32) #1

declare dso_local i32 @trace_nfs_commit_done(%struct.nfs_commit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
