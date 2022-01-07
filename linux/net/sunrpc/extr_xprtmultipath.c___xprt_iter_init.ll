; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c___xprt_iter_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c___xprt_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt_iter = type { %struct.rpc_xprt_iter_ops*, i32*, i32 }
%struct.rpc_xprt_switch = type { i32 }
%struct.rpc_xprt_iter_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt_iter*, %struct.rpc_xprt_switch*, %struct.rpc_xprt_iter_ops*)* @__xprt_iter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xprt_iter_init(%struct.rpc_xprt_iter* %0, %struct.rpc_xprt_switch* %1, %struct.rpc_xprt_iter_ops* %2) #0 {
  %4 = alloca %struct.rpc_xprt_iter*, align 8
  %5 = alloca %struct.rpc_xprt_switch*, align 8
  %6 = alloca %struct.rpc_xprt_iter_ops*, align 8
  store %struct.rpc_xprt_iter* %0, %struct.rpc_xprt_iter** %4, align 8
  store %struct.rpc_xprt_switch* %1, %struct.rpc_xprt_switch** %5, align 8
  store %struct.rpc_xprt_iter_ops* %2, %struct.rpc_xprt_iter_ops** %6, align 8
  %7 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %4, align 8
  %8 = getelementptr inbounds %struct.rpc_xprt_iter, %struct.rpc_xprt_iter* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %5, align 8
  %11 = call i32 @xprt_switch_get(%struct.rpc_xprt_switch* %10)
  %12 = call i32 @rcu_assign_pointer(i32 %9, i32 %11)
  %13 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_xprt_iter, %struct.rpc_xprt_iter* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.rpc_xprt_iter_ops*, %struct.rpc_xprt_iter_ops** %6, align 8
  %16 = load %struct.rpc_xprt_iter*, %struct.rpc_xprt_iter** %4, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt_iter, %struct.rpc_xprt_iter* %16, i32 0, i32 0
  store %struct.rpc_xprt_iter_ops* %15, %struct.rpc_xprt_iter_ops** %17, align 8
  ret void
}

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @xprt_switch_get(%struct.rpc_xprt_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
