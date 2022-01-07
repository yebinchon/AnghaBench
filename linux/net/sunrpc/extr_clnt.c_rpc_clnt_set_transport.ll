; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_clnt_set_transport.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_clnt_set_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32, i32, i32, %struct.rpc_timeout* }
%struct.rpc_xprt = type { i32 }
%struct.rpc_timeout = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_xprt* (%struct.rpc_clnt*, %struct.rpc_xprt*, %struct.rpc_timeout*)* @rpc_clnt_set_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_xprt* @rpc_clnt_set_transport(%struct.rpc_clnt* %0, %struct.rpc_xprt* %1, %struct.rpc_timeout* %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_xprt*, align 8
  %6 = alloca %struct.rpc_timeout*, align 8
  %7 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %5, align 8
  store %struct.rpc_timeout* %2, %struct.rpc_timeout** %6, align 8
  %8 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %9 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %14, i32 0, i32 1
  %16 = call i32 @lockdep_is_held(i32* %15)
  %17 = call %struct.rpc_xprt* @rcu_dereference_protected(i32 %13, i32 %16)
  store %struct.rpc_xprt* %17, %struct.rpc_xprt** %7, align 8
  %18 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %19 = call i32 @xprt_bound(%struct.rpc_xprt* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %23 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %3
  %25 = load %struct.rpc_timeout*, %struct.rpc_timeout** %6, align 8
  %26 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %27 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %26, i32 0, i32 3
  store %struct.rpc_timeout* %25, %struct.rpc_timeout** %27, align 8
  %28 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %29 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %32 = call i32 @rcu_assign_pointer(i32 %30, %struct.rpc_xprt* %31)
  %33 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %34 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  ret %struct.rpc_xprt* %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.rpc_xprt* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @xprt_bound(%struct.rpc_xprt*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.rpc_xprt*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
