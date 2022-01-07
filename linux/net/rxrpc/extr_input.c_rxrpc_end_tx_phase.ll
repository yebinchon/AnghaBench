; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_end_tx_phase.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_end_tx_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i32 }

@RXRPC_CALL_TX_LAST = common dso_local global i32 0, align 4
@RXRPC_CALL_CLIENT_RECV_REPLY = common dso_local global i32 0, align 4
@rxrpc_transmit_await_reply = common dso_local global i32 0, align 4
@rxrpc_transmit_end = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" = ok\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"end_tx %s\00", align 1
@rxrpc_call_states = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, i32, i8*)* @rxrpc_end_tx_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_end_tx_phase(%struct.rxrpc_call* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @RXRPC_CALL_TX_LAST, align 4
  %10 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %11 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %10, i32 0, i32 3
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %15 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %14, i32 0, i32 2
  %16 = call i32 @write_lock(i32* %15)
  %17 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %18 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %40 [
    i32 129, label %21
    i32 130, label %21
    i32 128, label %32
  ]

21:                                               ; preds = %3, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @RXRPC_CALL_CLIENT_RECV_REPLY, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %27 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %31

28:                                               ; preds = %21
  store i32 130, i32* %8, align 4
  %29 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %30 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %29, i32 0, i32 0
  store i32 130, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %24
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %34 = call i32 @__rxrpc_call_completed(%struct.rxrpc_call* %33)
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %36 = call i32 @rxrpc_notify_socket(%struct.rxrpc_call* %35)
  %37 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %38 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  br label %41

40:                                               ; preds = %3
  br label %57

41:                                               ; preds = %32, %31
  %42 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %43 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %42, i32 0, i32 2
  %44 = call i32 @write_unlock(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 130
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %49 = load i32, i32* @rxrpc_transmit_await_reply, align 4
  %50 = call i32 @trace_rxrpc_transmit(%struct.rxrpc_call* %48, i32 %49)
  br label %55

51:                                               ; preds = %41
  %52 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %53 = load i32, i32* @rxrpc_transmit_end, align 4
  %54 = call i32 @trace_rxrpc_transmit(%struct.rxrpc_call* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %75

57:                                               ; preds = %40
  %58 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %59 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %58, i32 0, i32 2
  %60 = call i32 @write_unlock(i32* %59)
  %61 = load i32*, i32** @rxrpc_call_states, align 8
  %62 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %63 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @kdebug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %71 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %72 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rxrpc_proto_abort(i8* %69, %struct.rxrpc_call* %70, i32 %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %57, %55
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @__rxrpc_call_completed(%struct.rxrpc_call*) #1

declare dso_local i32 @rxrpc_notify_socket(%struct.rxrpc_call*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @trace_rxrpc_transmit(%struct.rxrpc_call*, i32) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @kdebug(i8*, i32) #1

declare dso_local i32 @rxrpc_proto_abort(i8*, %struct.rxrpc_call*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
