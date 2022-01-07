; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_deactivate_one_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_deactivate_one_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, %struct.rxrpc_channel* }
%struct.rxrpc_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_connection*, i32)* @rxrpc_deactivate_one_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_deactivate_one_channel(%struct.rxrpc_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.rxrpc_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_channel*, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %7 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %6, i32 0, i32 1
  %8 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %8, i64 %10
  store %struct.rxrpc_channel* %11, %struct.rxrpc_channel** %5, align 8
  %12 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %13 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rcu_assign_pointer(i32 %14, i32* null)
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %20 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  ret void
}

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
