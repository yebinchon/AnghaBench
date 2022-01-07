; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_expose_client_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_expose_client_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, %struct.rxrpc_connection* }
%struct.rxrpc_connection = type { i32, %struct.rxrpc_channel* }
%struct.rxrpc_channel = type { i64 }

@RXRPC_CHANNELMASK = common dso_local global i32 0, align 4
@RXRPC_CALL_EXPOSED = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@RXRPC_CONN_DONT_REUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_expose_client_call(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxrpc_connection*, align 8
  %5 = alloca %struct.rxrpc_channel*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %6 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %7 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @RXRPC_CHANNELMASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %12 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %11, i32 0, i32 2
  %13 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %12, align 8
  store %struct.rxrpc_connection* %13, %struct.rxrpc_connection** %4, align 8
  %14 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %15 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %14, i32 0, i32 1
  %16 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %16, i64 %18
  store %struct.rxrpc_channel* %19, %struct.rxrpc_channel** %5, align 8
  %20 = load i32, i32* @RXRPC_CALL_EXPOSED, align 4
  %21 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %22 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %21, i32 0, i32 1
  %23 = call i32 @test_and_set_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %1
  %26 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %27 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %5, align 8
  %31 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @INT_MAX, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* @RXRPC_CONN_DONT_REUSE, align 4
  %37 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %38 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %37, i32 0, i32 0
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %25
  %41 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @rxrpc_expose_client_conn(%struct.rxrpc_connection* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_expose_client_conn(%struct.rxrpc_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
