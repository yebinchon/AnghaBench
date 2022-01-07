; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_release_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_release_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_xprt = type { i32 }
%struct.rpc_xprt_switch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_clnt*, %struct.rpc_xprt*)* @rpc_task_release_xprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_task_release_xprt(%struct.rpc_clnt* %0, %struct.rpc_xprt* %1) #0 {
  %3 = alloca %struct.rpc_clnt*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.rpc_xprt_switch*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %3, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %4, align 8
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %7 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %6, i32 0, i32 0
  %8 = call i32 @atomic_long_dec(i32* %7)
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.rpc_xprt_switch* @rcu_dereference(i32 %13)
  store %struct.rpc_xprt_switch* %14, %struct.rpc_xprt_switch** %5, align 8
  %15 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %5, align 8
  %16 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %15, i32 0, i32 0
  %17 = call i32 @atomic_long_dec(i32* %16)
  %18 = call i32 (...) @rcu_read_unlock()
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %20 = call i32 @xprt_put(%struct.rpc_xprt* %19)
  ret void
}

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rpc_xprt_switch* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @xprt_put(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
