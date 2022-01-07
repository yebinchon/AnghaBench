; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_sendmsg.c_rxrpc_instant_resend.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_sendmsg.c_rxrpc_instant_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32*, i32, i32 }

@RXRPC_CALL_COMPLETE = common dso_local global i64 0, align 8
@RXRPC_TX_ANNO_LAST = common dso_local global i32 0, align 4
@RXRPC_TX_ANNO_RETRANS = common dso_local global i32 0, align 4
@RXRPC_CALL_EV_RESEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, i32)* @rxrpc_instant_resend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_instant_resend(%struct.rxrpc_call* %0, i32 %1) #0 {
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %6 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %9 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RXRPC_CALL_COMPLETE, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %15 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RXRPC_TX_ANNO_LAST, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @RXRPC_TX_ANNO_RETRANS, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %26 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  %31 = load i32, i32* @RXRPC_CALL_EV_RESEND, align 4
  %32 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %33 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %32, i32 0, i32 3
  %34 = call i32 @test_and_set_bit(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %13
  %37 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %38 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %37)
  br label %39

39:                                               ; preds = %36, %13
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %42 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %41, i32 0, i32 2
  %43 = call i32 @spin_unlock_bh(i32* %42)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
