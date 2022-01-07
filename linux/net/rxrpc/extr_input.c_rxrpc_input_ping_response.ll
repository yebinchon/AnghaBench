; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_ping_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_ping_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32, i32, i32 }

@RXRPC_CALL_PINGING = common dso_local global i32 0, align 4
@rxrpc_rtt_rx_ping_response = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, i32, i64, i64)* @rxrpc_input_ping_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_input_ping_response(%struct.rxrpc_call* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %12 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = call i32 (...) @smp_rmb()
  %15 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %16 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @READ_ONCE(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %21 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %26 = call i32 @rxrpc_input_check_for_lost_ack(%struct.rxrpc_call* %25)
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @before(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @RXRPC_CALL_PINGING, align 4
  %34 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %35 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %34, i32 0, i32 1
  %36 = call i32 @test_and_clear_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32, %27
  br label %53

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @after(i64 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %53

45:                                               ; preds = %39
  %46 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %47 = load i32, i32* @rxrpc_rtt_rx_ping_response, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @rxrpc_peer_add_rtt(%struct.rxrpc_call* %46, i32 %47, i64 %48, i64 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %44, %38
  ret void
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @rxrpc_input_check_for_lost_ack(%struct.rxrpc_call*) #1

declare dso_local i64 @before(i64, i64) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i32 @rxrpc_peer_add_rtt(%struct.rxrpc_call*, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
