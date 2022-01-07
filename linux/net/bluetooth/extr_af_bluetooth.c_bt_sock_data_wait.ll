; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_af_bluetooth.c_bt_sock_data_wait.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_af_bluetooth.c_bt_sock_data_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_WAITDATA = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i64)* @bt_sock_data_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bt_sock_data_wait(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @DECLARE_WAITQUEUE(i32 %5, i32 %6)
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i32 @sk_sleep(%struct.sock* %8)
  %10 = call i32 @add_wait_queue(i32 %9, i32* @wait)
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %13 = call i32 @set_current_state(i32 %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 2
  %16 = call i32 @skb_queue_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %53

19:                                               ; preds = %11
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RCV_SHUTDOWN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %19
  br label %53

32:                                               ; preds = %24
  %33 = load i32, i32* @current, align 4
  %34 = call i64 @signal_pending(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %32
  br label %53

40:                                               ; preds = %36
  %41 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call i32 @sk_set_bit(i32 %41, %struct.sock* %42)
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = call i32 @release_sock(%struct.sock* %44)
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @schedule_timeout(i64 %46)
  store i64 %47, i64* %4, align 8
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = call i32 @lock_sock(%struct.sock* %48)
  %50 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = call i32 @sk_clear_bit(i32 %50, %struct.sock* %51)
  br label %11

53:                                               ; preds = %39, %31, %18
  %54 = load i32, i32* @TASK_RUNNING, align 4
  %55 = call i32 @__set_current_state(i32 %54)
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = call i32 @sk_sleep(%struct.sock* %56)
  %58 = call i32 @remove_wait_queue(i32 %57, i32* @wait)
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
