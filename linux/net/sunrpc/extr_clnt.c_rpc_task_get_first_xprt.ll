; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_get_first_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_get_first_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.rpc_clnt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_xprt* (%struct.rpc_clnt*)* @rpc_task_get_first_xprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_xprt* @rpc_task_get_first_xprt(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @rcu_dereference(i32 %7)
  %9 = call %struct.rpc_xprt* @xprt_get(i32 %8)
  store %struct.rpc_xprt* %9, %struct.rpc_xprt** %3, align 8
  %10 = call i32 (...) @rcu_read_unlock()
  %11 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %12 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %13 = call %struct.rpc_xprt* @rpc_task_get_xprt(%struct.rpc_clnt* %11, %struct.rpc_xprt* %12)
  ret %struct.rpc_xprt* %13
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rpc_xprt* @xprt_get(i32) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.rpc_xprt* @rpc_task_get_xprt(%struct.rpc_clnt*, %struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
