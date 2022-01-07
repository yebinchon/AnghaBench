; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_activate_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_activate_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_net = type { i32, i32 }
%struct.rxrpc_connection = type { i32, i32, i32 }

@RXRPC_CONN_PROBING_FOR_UPGRADE = common dso_local global i32 0, align 4
@rxrpc_client_to_upgrade = common dso_local global i32 0, align 4
@RXRPC_CONN_CLIENT_UPGRADE = common dso_local global i32 0, align 4
@rxrpc_client_to_active = common dso_local global i32 0, align 4
@RXRPC_CONN_CLIENT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_net*, %struct.rxrpc_connection*)* @rxrpc_activate_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_activate_conn(%struct.rxrpc_net* %0, %struct.rxrpc_connection* %1) #0 {
  %3 = alloca %struct.rxrpc_net*, align 8
  %4 = alloca %struct.rxrpc_connection*, align 8
  store %struct.rxrpc_net* %0, %struct.rxrpc_net** %3, align 8
  store %struct.rxrpc_connection* %1, %struct.rxrpc_connection** %4, align 8
  %5 = load i32, i32* @RXRPC_CONN_PROBING_FOR_UPGRADE, align 4
  %6 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %7 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %6, i32 0, i32 2
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %12 = load i32, i32* @rxrpc_client_to_upgrade, align 4
  %13 = call i32 @trace_rxrpc_client(%struct.rxrpc_connection* %11, i32 -1, i32 %12)
  %14 = load i32, i32* @RXRPC_CONN_CLIENT_UPGRADE, align 4
  %15 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %16 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %19 = load i32, i32* @rxrpc_client_to_active, align 4
  %20 = call i32 @trace_rxrpc_client(%struct.rxrpc_connection* %18, i32 -1, i32 %19)
  %21 = load i32, i32* @RXRPC_CONN_CLIENT_ACTIVE, align 4
  %22 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %23 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %10
  %25 = load %struct.rxrpc_net*, %struct.rxrpc_net** %3, align 8
  %26 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %30 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %29, i32 0, i32 0
  %31 = load %struct.rxrpc_net*, %struct.rxrpc_net** %3, align 8
  %32 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %31, i32 0, i32 0
  %33 = call i32 @list_move_tail(i32* %30, i32* %32)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @trace_rxrpc_client(%struct.rxrpc_connection*, i32, i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
