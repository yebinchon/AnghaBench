; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_event.c_rxrpc_call_is_secure.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_event.c_rxrpc_call_is_secure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@RXRPC_CALL_SERVER_SECURING = common dso_local global i64 0, align 8
@RXRPC_CALL_SERVER_ACCEPTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*)* @rxrpc_call_is_secure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_call_is_secure(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %3 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %4 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_call* %3)
  %5 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %6 = icmp ne %struct.rxrpc_call* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %9 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %8, i32 0, i32 1
  %10 = call i32 @write_lock_bh(i32* %9)
  %11 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %12 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RXRPC_CALL_SERVER_SECURING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = load i64, i64* @RXRPC_CALL_SERVER_ACCEPTING, align 8
  %18 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %19 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %21 = call i32 @rxrpc_notify_socket(%struct.rxrpc_call* %20)
  br label %22

22:                                               ; preds = %16, %7
  %23 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %24 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %23, i32 0, i32 1
  %25 = call i32 @write_unlock_bh(i32* %24)
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @_enter(i8*, %struct.rxrpc_call*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @rxrpc_notify_socket(%struct.rxrpc_call*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
