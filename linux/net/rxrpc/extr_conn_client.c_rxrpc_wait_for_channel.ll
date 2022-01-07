; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_wait_for_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_wait_for_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@myself = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RXRPC_CALL_IS_INTR = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, i32)* @rxrpc_wait_for_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_wait_for_channel(%struct.rxrpc_call* %0, i32 %1) #0 {
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %7 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %11 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %67, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @myself, align 4
  %16 = load i32, i32* @current, align 4
  %17 = call i32 @DECLARE_WAITQUEUE(i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @gfpflags_allow_blocking(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %69

24:                                               ; preds = %14
  %25 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %26 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %25, i32 0, i32 0
  %27 = call i32 @add_wait_queue_exclusive(i32* %26, i32* @myself)
  br label %28

28:                                               ; preds = %59, %24
  %29 = load i32, i32* @RXRPC_CALL_IS_INTR, align 4
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %31 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %30, i32 0, i32 1
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %36 = call i32 @set_current_state(i32 %35)
  br label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %39 = call i32 @set_current_state(i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %42 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %61

46:                                               ; preds = %40
  %47 = load i32, i32* @RXRPC_CALL_IS_INTR, align 4
  %48 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %49 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %48, i32 0, i32 1
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @signal_pending(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @ERESTARTSYS, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %61

59:                                               ; preds = %52, %46
  %60 = call i32 (...) @schedule()
  br label %28

61:                                               ; preds = %56, %45
  %62 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %63 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %62, i32 0, i32 0
  %64 = call i32 @remove_wait_queue(i32* %63, i32* @myself)
  %65 = load i32, i32* @TASK_RUNNING, align 4
  %66 = call i32 @__set_current_state(i32 %65)
  br label %67

67:                                               ; preds = %61, %2
  %68 = call i32 (...) @smp_rmb()
  br label %69

69:                                               ; preds = %67, %21
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local i32 @add_wait_queue_exclusive(i32*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
