; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_check_for_lost_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_check_for_lost_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i64*, i32, i32 }

@RXRPC_RXTX_BUFF_MASK = common dso_local global i32 0, align 4
@RXRPC_TX_ANNO_MASK = common dso_local global i64 0, align 8
@RXRPC_TX_ANNO_UNACK = common dso_local global i64 0, align 8
@RXRPC_TX_ANNO_RETRANS = common dso_local global i64 0, align 8
@RXRPC_CALL_EV_RESEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*)* @rxrpc_input_check_for_lost_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_input_check_for_lost_ack(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %11 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %10, i32 0, i32 4
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %14 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %18 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @before(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %64, %24
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @before_eq(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RXRPC_RXTX_BUFF_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %36 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @RXRPC_TX_ANNO_MASK, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @RXRPC_TX_ANNO_UNACK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %64

49:                                               ; preds = %31
  %50 = load i64, i64* @RXRPC_TX_ANNO_MASK, align 8
  %51 = xor i64 %50, -1
  %52 = load i64, i64* %8, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* @RXRPC_TX_ANNO_RETRANS, align 8
  %55 = load i64, i64* %8, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %59 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %57, i64* %63, align 8
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %49, %48
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %26

67:                                               ; preds = %26
  br label %68

68:                                               ; preds = %67, %1
  %69 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %70 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %69, i32 0, i32 4
  %71 = call i32 @spin_unlock_bh(i32* %70)
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i32, i32* @RXRPC_CALL_EV_RESEND, align 4
  %76 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %77 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %76, i32 0, i32 3
  %78 = call i32 @test_and_set_bit(i32 %75, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %82 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %81)
  br label %83

83:                                               ; preds = %80, %74, %68
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i64 @before_eq(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
