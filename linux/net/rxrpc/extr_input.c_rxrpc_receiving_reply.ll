; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_receiving_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_receiving_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.rxrpc_ack_summary = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MAX_JIFFY_OFFSET = common dso_local global i64 0, align 8
@rxrpc_timer_init_for_reply = common dso_local global i32 0, align 4
@RXRPC_CALL_TX_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"TXL\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ETD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*)* @rxrpc_receiving_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_receiving_reply(%struct.rxrpc_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca %struct.rxrpc_ack_summary, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  %8 = bitcast %struct.rxrpc_ack_summary* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %10 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @READ_ONCE(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %14 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %1
  %18 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %19 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %18, i32 0, i32 4
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %22 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %24 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %23, i32 0, i32 4
  %25 = call i32 @spin_unlock_bh(i32* %24)
  %26 = load i64, i64* @jiffies, align 8
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @MAX_JIFFY_OFFSET, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %6, align 8
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %31 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @WRITE_ONCE(i32 %32, i64 %33)
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %36 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @WRITE_ONCE(i32 %37, i64 %38)
  %40 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %41 = load i32, i32* @rxrpc_timer_init_for_reply, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @trace_rxrpc_timer(%struct.rxrpc_call* %40, i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %17, %1
  %45 = load i32, i32* @RXRPC_CALL_TX_LAST, align 4
  %46 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %47 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %46, i32 0, i32 1
  %48 = call i32 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %44
  %51 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @rxrpc_rotate_tx_window(%struct.rxrpc_call* %51, i32 %52, %struct.rxrpc_ack_summary* %4)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @rxrpc_proto_abort(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_call* %56, i32 %57)
  store i32 0, i32* %2, align 4
  br label %68

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %62 = call i32 @rxrpc_end_tx_phase(%struct.rxrpc_call* %61, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %68

65:                                               ; preds = %60
  %66 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %67 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  store i32 1, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %64, %55
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @READ_ONCE(i32) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @WRITE_ONCE(i32, i64) #2

declare dso_local i32 @trace_rxrpc_timer(%struct.rxrpc_call*, i32, i64) #2

declare dso_local i32 @test_bit(i32, i32*) #2

declare dso_local i32 @rxrpc_rotate_tx_window(%struct.rxrpc_call*, i32, %struct.rxrpc_ack_summary*) #2

declare dso_local i32 @rxrpc_proto_abort(i8*, %struct.rxrpc_call*, i32) #2

declare dso_local i32 @rxrpc_end_tx_phase(%struct.rxrpc_call*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
