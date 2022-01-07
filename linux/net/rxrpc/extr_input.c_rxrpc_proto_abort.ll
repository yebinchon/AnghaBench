; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_proto_abort.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_proto_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32 }

@RX_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@RXRPC_CALL_EV_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.rxrpc_call*, i32)* @rxrpc_proto_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_proto_abort(i8* %0, %struct.rxrpc_call* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @RX_PROTOCOL_ERROR, align 4
  %11 = load i32, i32* @EBADMSG, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i64 @rxrpc_abort_call(i8* %7, %struct.rxrpc_call* %8, i32 %9, i32 %10, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32, i32* @RXRPC_CALL_EV_ABORT, align 4
  %17 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %18 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %21 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %20)
  br label %22

22:                                               ; preds = %15, %3
  ret void
}

declare dso_local i64 @rxrpc_abort_call(i8*, %struct.rxrpc_call*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
