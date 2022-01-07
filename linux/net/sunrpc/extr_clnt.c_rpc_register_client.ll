; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_register_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_register_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.net = type { i32 }
%struct.sunrpc_net = type { i32, i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_clnt*)* @rpc_register_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_register_client(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.sunrpc_net*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  %5 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %6 = call %struct.net* @rpc_net_ns(%struct.rpc_clnt* %5)
  store %struct.net* %6, %struct.net** %3, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load i32, i32* @sunrpc_net_id, align 4
  %9 = call %struct.sunrpc_net* @net_generic(%struct.net* %7, i32 %8)
  store %struct.sunrpc_net* %9, %struct.sunrpc_net** %4, align 8
  %10 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %11 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %14 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %13, i32 0, i32 0
  %15 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %16 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %15, i32 0, i32 1
  %17 = call i32 @list_add(i32* %14, i32* %16)
  %18 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %19 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  ret void
}

declare dso_local %struct.net* @rpc_net_ns(%struct.rpc_clnt*) #1

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
