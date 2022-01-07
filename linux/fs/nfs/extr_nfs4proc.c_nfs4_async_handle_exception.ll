; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_async_handle_exception.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_async_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_server = type { i32, %struct.nfs_client* }
%struct.nfs_client = type { i32, i32 }
%struct.nfs4_exception = type { i32, i64, i32, i64 }

@NFS4CLNT_MANAGER_RUNNING = common dso_local global i32 0, align 4
@NFS_MIG_FAILED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFS4ERR_MOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_server*, i32, %struct.nfs4_exception*)* @nfs4_async_handle_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_async_handle_exception(%struct.rpc_task* %0, %struct.nfs_server* %1, i32 %2, %struct.nfs4_exception* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_task*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs4_exception*, align 8
  %10 = alloca %struct.nfs_client*, align 8
  %11 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %6, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nfs4_exception* %3, %struct.nfs4_exception** %9, align 8
  %12 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %13 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %12, i32 0, i32 1
  %14 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  store %struct.nfs_client* %14, %struct.nfs_client** %10, align 8
  %15 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.nfs4_exception*, %struct.nfs4_exception** %9, align 8
  %18 = call i32 @nfs4_do_handle_exception(%struct.nfs_server* %15, i32 %16, %struct.nfs4_exception* %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.nfs4_exception*, %struct.nfs4_exception** %9, align 8
  %20 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %25 = load %struct.nfs4_exception*, %struct.nfs4_exception** %9, align 8
  %26 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %25, i32 0, i32 2
  %27 = call i32 @nfs4_update_delay(i32* %26)
  %28 = call i32 @rpc_delay(%struct.rpc_task* %24, i32 %27)
  br label %61

29:                                               ; preds = %4
  %30 = load %struct.nfs4_exception*, %struct.nfs4_exception** %9, align 8
  %31 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.nfs_client*, %struct.nfs_client** %10, align 8
  %36 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %35, i32 0, i32 0
  %37 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %38 = call i32 @rpc_sleep_on(i32* %36, %struct.rpc_task* %37, i32* null)
  %39 = load i32, i32* @NFS4CLNT_MANAGER_RUNNING, align 4
  %40 = load %struct.nfs_client*, %struct.nfs_client** %10, align 8
  %41 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %40, i32 0, i32 1
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.nfs_client*, %struct.nfs_client** %10, align 8
  %46 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %45, i32 0, i32 0
  %47 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %48 = call i32 @rpc_wake_up_queued_task(i32* %46, %struct.rpc_task* %47)
  br label %49

49:                                               ; preds = %44, %34
  br label %61

50:                                               ; preds = %29
  %51 = load i32, i32* @NFS_MIG_FAILED, align 4
  %52 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %53 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %52, i32 0, i32 0
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %77

61:                                               ; preds = %49, %23
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.nfs4_exception*, %struct.nfs4_exception** %9, align 8
  %66 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @NFS4ERR_MOVED, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %73 = call i32 @rpc_task_release_transport(%struct.rpc_task* %72)
  br label %74

74:                                               ; preds = %71, %64
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %59
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @nfs4_do_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

declare dso_local i32 @rpc_delay(%struct.rpc_task*, i32) #1

declare dso_local i32 @nfs4_update_delay(i32*) #1

declare dso_local i32 @rpc_sleep_on(i32*, %struct.rpc_task*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rpc_wake_up_queued_task(i32*, %struct.rpc_task*) #1

declare dso_local i32 @rpc_task_release_transport(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
