; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_wait_for_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_wait_for_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64)* @x25_wait_for_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_wait_for_data(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @wait, align 4
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @DECLARE_WAITQUEUE(i32 %6, i32 %7)
  store i32 0, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @sk_sleep(%struct.sock* %9)
  %11 = call i32 @add_wait_queue_exclusive(i32 %10, i32* @wait)
  br label %12

12:                                               ; preds = %48, %2
  %13 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %14 = call i32 @__set_current_state(i32 %13)
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RCV_SHUTDOWN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %49

22:                                               ; preds = %12
  %23 = load i32, i32* @ERESTARTSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @current, align 4
  %26 = call i64 @signal_pending(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %49

29:                                               ; preds = %22
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %49

35:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 1
  %38 = call i64 @skb_queue_empty(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = call i32 @release_sock(%struct.sock* %41)
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @schedule_timeout(i64 %43)
  store i64 %44, i64* %4, align 8
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = call i32 @lock_sock(%struct.sock* %45)
  br label %48

47:                                               ; preds = %35
  br label %49

48:                                               ; preds = %40
  br label %12

49:                                               ; preds = %47, %34, %28, %21
  %50 = load i32, i32* @TASK_RUNNING, align 4
  %51 = call i32 @__set_current_state(i32 %50)
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = call i32 @sk_sleep(%struct.sock* %52)
  %54 = call i32 @remove_wait_queue(i32 %53, i32* @wait)
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue_exclusive(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
