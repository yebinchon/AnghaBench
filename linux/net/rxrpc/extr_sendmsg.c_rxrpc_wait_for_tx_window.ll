; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_sendmsg.c_rxrpc_wait_for_tx_window.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_sendmsg.c_rxrpc_wait_for_tx_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i32 }
%struct.rxrpc_call = type { i32, i32, i32, i32 }

@myself = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c",{%u,%u,%u}\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_sock*, %struct.rxrpc_call*, i64*, i32)* @rxrpc_wait_for_tx_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_wait_for_tx_window(%struct.rxrpc_sock* %0, %struct.rxrpc_call* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.rxrpc_sock*, align 8
  %6 = alloca %struct.rxrpc_call*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %5, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @myself, align 4
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @DECLARE_WAITQUEUE(i32 %10, i32 %11)
  %13 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %14 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %17 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %20 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @_enter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  %23 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %24 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %23, i32 0, i32 0
  %25 = call i32 @add_wait_queue(i32* %24, i32* @myself)
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %31 = call i32 @rxrpc_wait_for_tx_window_nonintr(%struct.rxrpc_sock* %29, %struct.rxrpc_call* %30)
  store i32 %31, i32* %9, align 4
  br label %37

32:                                               ; preds = %4
  %33 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %34 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = call i32 @rxrpc_wait_for_tx_window_intr(%struct.rxrpc_sock* %33, %struct.rxrpc_call* %34, i64* %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %39 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %38, i32 0, i32 0
  %40 = call i32 @remove_wait_queue(i32* %39, i32* @myself)
  %41 = load i32, i32* @TASK_RUNNING, align 4
  %42 = call i32 @set_current_state(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @rxrpc_wait_for_tx_window_nonintr(%struct.rxrpc_sock*, %struct.rxrpc_call*) #1

declare dso_local i32 @rxrpc_wait_for_tx_window_intr(%struct.rxrpc_sock*, %struct.rxrpc_call*, i64*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
