; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_implicit_end_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_implicit_end_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i32 }
%struct.rxrpc_connection = type { i32 }
%struct.rxrpc_call = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IMP\00", align 1
@RX_CALL_DEAD = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@RXRPC_CALL_EV_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_sock*, %struct.rxrpc_connection*, %struct.rxrpc_call*)* @rxrpc_input_implicit_end_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_input_implicit_end_call(%struct.rxrpc_sock* %0, %struct.rxrpc_connection* %1, %struct.rxrpc_call* %2) #0 {
  %4 = alloca %struct.rxrpc_sock*, align 8
  %5 = alloca %struct.rxrpc_connection*, align 8
  %6 = alloca %struct.rxrpc_call*, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %4, align 8
  store %struct.rxrpc_connection* %1, %struct.rxrpc_connection** %5, align 8
  store %struct.rxrpc_call* %2, %struct.rxrpc_call** %6, align 8
  %7 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %8 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @READ_ONCE(i32 %9)
  switch i32 %10, label %15 [
    i32 128, label %11
    i32 129, label %14
  ]

11:                                               ; preds = %3
  %12 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %13 = call i32 @rxrpc_call_completed(%struct.rxrpc_call* %12)
  br label %14

14:                                               ; preds = %3, %11
  br label %32

15:                                               ; preds = %3
  %16 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %17 = load i32, i32* @RX_CALL_DEAD, align 4
  %18 = load i32, i32* @ESHUTDOWN, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 @rxrpc_abort_call(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_call* %16, i32 0, i32 %17, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i32, i32* @RXRPC_CALL_EV_ABORT, align 4
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %25 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %28 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %27)
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %31 = call i32 @trace_rxrpc_improper_term(%struct.rxrpc_call* %30)
  br label %32

32:                                               ; preds = %29, %14
  %33 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %34 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %37 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %38 = call i32 @__rxrpc_disconnect_call(%struct.rxrpc_connection* %36, %struct.rxrpc_call* %37)
  %39 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %40 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %43 = call i32 @rxrpc_notify_socket(%struct.rxrpc_call* %42)
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @rxrpc_call_completed(%struct.rxrpc_call*) #1

declare dso_local i32 @rxrpc_abort_call(i8*, %struct.rxrpc_call*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

declare dso_local i32 @trace_rxrpc_improper_term(%struct.rxrpc_call*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__rxrpc_disconnect_call(%struct.rxrpc_connection*, %struct.rxrpc_call*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rxrpc_notify_socket(%struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
