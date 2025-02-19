; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_write_stateid_changed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_write_stateid_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_pgio_args = type { i32, i32, i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_pgio_args*)* @nfs4_write_stateid_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_write_stateid_changed(%struct.rpc_task* %0, %struct.nfs_pgio_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_pgio_args*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_pgio_args* %1, %struct.nfs_pgio_args** %5, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %7 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @nfs4_error_stateid_expired(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %12, i32 0, i32 2
  %14 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %15 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FMODE_WRITE, align 4
  %21 = call i64 @nfs4_stateid_is_current(i32* %13, i32 %16, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %27

24:                                               ; preds = %11
  %25 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %26 = call i32 @rpc_restart_call_prepare(%struct.rpc_task* %25)
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %23
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @nfs4_error_stateid_expired(i32) #1

declare dso_local i64 @nfs4_stateid_is_current(i32*, i32, i32, i32) #1

declare dso_local i32 @rpc_restart_call_prepare(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
