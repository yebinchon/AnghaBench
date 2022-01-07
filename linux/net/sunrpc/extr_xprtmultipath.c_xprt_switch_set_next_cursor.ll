; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_switch_set_next_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_switch_set_next_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.rpc_xprt_switch = type { i32 }
%struct.rpc_xprt_switch.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_xprt* (%struct.rpc_xprt_switch*, %struct.rpc_xprt**, %struct.rpc_xprt* (%struct.rpc_xprt_switch.0*, %struct.rpc_xprt*)*)* @xprt_switch_set_next_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_xprt* @xprt_switch_set_next_cursor(%struct.rpc_xprt_switch* %0, %struct.rpc_xprt** %1, %struct.rpc_xprt* (%struct.rpc_xprt_switch.0*, %struct.rpc_xprt*)* %2) #0 {
  %4 = alloca %struct.rpc_xprt_switch*, align 8
  %5 = alloca %struct.rpc_xprt**, align 8
  %6 = alloca %struct.rpc_xprt* (%struct.rpc_xprt_switch.0*, %struct.rpc_xprt*)*, align 8
  %7 = alloca %struct.rpc_xprt*, align 8
  %8 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt_switch* %0, %struct.rpc_xprt_switch** %4, align 8
  store %struct.rpc_xprt** %1, %struct.rpc_xprt*** %5, align 8
  store %struct.rpc_xprt* (%struct.rpc_xprt_switch.0*, %struct.rpc_xprt*)* %2, %struct.rpc_xprt* (%struct.rpc_xprt_switch.0*, %struct.rpc_xprt*)** %6, align 8
  %9 = load %struct.rpc_xprt**, %struct.rpc_xprt*** %5, align 8
  %10 = call %struct.rpc_xprt* @smp_load_acquire(%struct.rpc_xprt** %9)
  store %struct.rpc_xprt* %10, %struct.rpc_xprt** %8, align 8
  %11 = load %struct.rpc_xprt* (%struct.rpc_xprt_switch.0*, %struct.rpc_xprt*)*, %struct.rpc_xprt* (%struct.rpc_xprt_switch.0*, %struct.rpc_xprt*)** %6, align 8
  %12 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %4, align 8
  %13 = bitcast %struct.rpc_xprt_switch* %12 to %struct.rpc_xprt_switch.0*
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %15 = call %struct.rpc_xprt* %11(%struct.rpc_xprt_switch.0* %13, %struct.rpc_xprt* %14)
  store %struct.rpc_xprt* %15, %struct.rpc_xprt** %7, align 8
  %16 = load %struct.rpc_xprt**, %struct.rpc_xprt*** %5, align 8
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  %18 = call i32 @smp_store_release(%struct.rpc_xprt** %16, %struct.rpc_xprt* %17)
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  ret %struct.rpc_xprt* %19
}

declare dso_local %struct.rpc_xprt* @smp_load_acquire(%struct.rpc_xprt**) #1

declare dso_local i32 @smp_store_release(%struct.rpc_xprt**, %struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
