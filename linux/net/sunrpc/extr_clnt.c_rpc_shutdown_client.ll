; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_shutdown_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_shutdown_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"RPC:       shutting down %s client for %s\0A\00", align 1
@destroy_wait = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_shutdown_client(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  %3 = call i32 (...) @might_sleep()
  %4 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %10 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_4__* @rcu_dereference(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dprintk_rcu(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %14)
  br label %16

16:                                               ; preds = %22, %1
  %17 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %17, i32 0, i32 0
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %24 = call i32 @rpc_killall_tasks(%struct.rpc_clnt* %23)
  %25 = load i32, i32* @destroy_wait, align 4
  %26 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %27 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %26, i32 0, i32 0
  %28 = call i32 @list_empty(i32* %27)
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 1, %29
  %31 = call i32 @wait_event_timeout(i32 %25, i32 %28, i32 %30)
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %34 = call i32 @rpc_release_client(%struct.rpc_clnt* %33)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @dprintk_rcu(i8*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @rcu_dereference(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rpc_killall_tasks(%struct.rpc_clnt*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @rpc_release_client(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
