; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_call_object.c_rxrpc_call_timer_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_call_object.c_rxrpc_call_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@RXRPC_CALL_COMPLETE = common dso_local global i64 0, align 8
@rxrpc_timer_expired = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@call = common dso_local global %struct.rxrpc_call* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rxrpc_call_timer_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_call_timer_expired(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.rxrpc_call*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %5 = ptrtoint %struct.rxrpc_call* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.rxrpc_call* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.rxrpc_call* %8, %struct.rxrpc_call** %3, align 8
  %9 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %10 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %14 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RXRPC_CALL_COMPLETE, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %20 = load i32, i32* @rxrpc_timer_expired, align 4
  %21 = load i32, i32* @jiffies, align 4
  %22 = call i32 @trace_rxrpc_timer(%struct.rxrpc_call* %19, i32 %20, i32 %21)
  %23 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %24 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %23)
  br label %25

25:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.rxrpc_call* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @trace_rxrpc_timer(%struct.rxrpc_call*, i32, i32) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
