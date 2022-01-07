; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_call_event.c_rxrpc_propose_ping.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_call_event.c_rxrpc_propose_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32 }

@RXRPC_CALL_EV_PING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@rxrpc_idle_ack_delay = common dso_local global i64 0, align 8
@rxrpc_timer_set_for_ping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, i32, i32)* @rxrpc_propose_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_propose_ping(%struct.rxrpc_call* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rxrpc_call*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i32, i32* @RXRPC_CALL_EV_PING, align 4
  %16 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %17 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %16, i32 0, i32 1
  %18 = call i32 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %22 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %21)
  br label %23

23:                                               ; preds = %20, %14, %11
  br label %47

24:                                               ; preds = %3
  %25 = load i64, i64* @jiffies, align 8
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @rxrpc_idle_ack_delay, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %31 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @time_before(i64 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %24
  %36 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %37 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @WRITE_ONCE(i32 %38, i64 %39)
  %41 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @rxrpc_timer_set_for_ping, align 4
  %45 = call i32 @rxrpc_reduce_call_timer(%struct.rxrpc_call* %41, i64 %42, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %35, %24
  br label %47

47:                                               ; preds = %46, %23
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @rxrpc_reduce_call_timer(%struct.rxrpc_call*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
