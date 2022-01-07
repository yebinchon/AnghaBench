; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_set_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_set_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32, %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32, i32, i32, i64, i64, i64, i32 }

@RPC_TASK_SOFT = common dso_local global i32 0, align 4
@RPC_TASK_TIMEOUT = common dso_local global i32 0, align 4
@RPC_TASK_NO_RETRANS_TIMEOUT = common dso_local global i32 0, align 4
@RPC_TASK_SWAPPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.rpc_clnt*)* @rpc_task_set_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_task_set_client(%struct.rpc_task* %0, %struct.rpc_clnt* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %4, align 8
  %5 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %6 = icmp ne %struct.rpc_clnt* %5, null
  br i1 %6, label %7, label %72

7:                                                ; preds = %2
  %8 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %10 = call i32 @rpc_task_set_transport(%struct.rpc_task* %8, %struct.rpc_clnt* %9)
  %11 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %12 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 2
  store %struct.rpc_clnt* %11, %struct.rpc_clnt** %13, align 8
  %14 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %14, i32 0, i32 6
  %16 = call i32 @atomic_inc(i32* %15)
  %17 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %7
  %22 = load i32, i32* @RPC_TASK_SOFT, align 4
  %23 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %7
  %28 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %29 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @RPC_TASK_TIMEOUT, align 4
  %34 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %35 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %40 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @RPC_TASK_NO_RETRANS_TIMEOUT, align 4
  %45 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %46 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %51 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %50, i32 0, i32 2
  %52 = call i64 @atomic_read(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @RPC_TASK_SWAPPER, align 4
  %56 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %57 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %62 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %61, i32 0, i32 0
  %63 = call i32 @spin_lock(i32* %62)
  %64 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %65 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %64, i32 0, i32 0
  %66 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %67 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %66, i32 0, i32 1
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  %69 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %70 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  br label %72

72:                                               ; preds = %60, %2
  ret void
}

declare dso_local i32 @rpc_task_set_transport(%struct.rpc_task*, %struct.rpc_clnt*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
