; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_ar-internal.h_rxrpc_put_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_ar-internal.h_rxrpc_put_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_connection*)* @rxrpc_put_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_put_connection(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca %struct.rxrpc_connection*, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %2, align 8
  %3 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %4 = icmp ne %struct.rxrpc_connection* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %16

6:                                                ; preds = %1
  %7 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %8 = call i64 @rxrpc_conn_is_client(%struct.rxrpc_connection* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %12 = call i32 @rxrpc_put_client_conn(%struct.rxrpc_connection* %11)
  br label %16

13:                                               ; preds = %6
  %14 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %15 = call i32 @rxrpc_put_service_conn(%struct.rxrpc_connection* %14)
  br label %16

16:                                               ; preds = %5, %13, %10
  ret void
}

declare dso_local i64 @rxrpc_conn_is_client(%struct.rxrpc_connection*) #1

declare dso_local i32 @rxrpc_put_client_conn(%struct.rxrpc_connection*) #1

declare dso_local i32 @rxrpc_put_service_conn(%struct.rxrpc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
