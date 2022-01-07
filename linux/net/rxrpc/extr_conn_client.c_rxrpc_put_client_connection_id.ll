; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_put_client_connection_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_put_client_connection_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@RXRPC_CONN_HAS_IDR = common dso_local global i32 0, align 4
@rxrpc_conn_id_lock = common dso_local global i32 0, align 4
@rxrpc_client_conn_ids = common dso_local global i32 0, align 4
@RXRPC_CIDSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_connection*)* @rxrpc_put_client_connection_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_put_client_connection_id(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca %struct.rxrpc_connection*, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %2, align 8
  %3 = load i32, i32* @RXRPC_CONN_HAS_IDR, align 4
  %4 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %5 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %4, i32 0, i32 1
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = call i32 @spin_lock(i32* @rxrpc_conn_id_lock)
  %10 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %11 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RXRPC_CIDSHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = call i32 @idr_remove(i32* @rxrpc_client_conn_ids, i32 %15)
  %17 = call i32 @spin_unlock(i32* @rxrpc_conn_id_lock)
  br label %18

18:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
