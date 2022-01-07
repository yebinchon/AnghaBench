; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_service.c_rxrpc_unpublish_service_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_service.c_rxrpc_unpublish_service_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rxrpc_peer* }
%struct.rxrpc_peer = type { i32, i32 }

@RXRPC_CONN_IN_SERVICE_CONNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_unpublish_service_conn(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca %struct.rxrpc_connection*, align 8
  %3 = alloca %struct.rxrpc_peer*, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %2, align 8
  %4 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %5 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %6, align 8
  store %struct.rxrpc_peer* %7, %struct.rxrpc_peer** %3, align 8
  %8 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %9 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %8, i32 0, i32 0
  %10 = call i32 @write_seqlock_bh(i32* %9)
  %11 = load i32, i32* @RXRPC_CONN_IN_SERVICE_CONNS, align 4
  %12 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %13 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %12, i32 0, i32 1
  %14 = call i64 @test_and_clear_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %18 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %17, i32 0, i32 0
  %19 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %20 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %19, i32 0, i32 1
  %21 = call i32 @rb_erase(i32* %18, i32* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %24 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %23, i32 0, i32 0
  %25 = call i32 @write_sequnlock_bh(i32* %24)
  ret void
}

declare dso_local i32 @write_seqlock_bh(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @write_sequnlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
