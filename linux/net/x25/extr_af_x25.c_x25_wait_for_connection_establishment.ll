; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_wait_for_connection_establishment.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_wait_for_connection_establishment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @x25_wait_for_connection_establishment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_wait_for_connection_establishment(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @DECLARE_WAITQUEUE(i32 %4, i32 %5)
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call i32 @sk_sleep(%struct.sock* %7)
  %9 = call i32 @add_wait_queue_exclusive(i32 %8, i32* @wait)
  br label %10

10:                                               ; preds = %43, %1
  %11 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %12 = call i32 @__set_current_state(i32 %11)
  %13 = load i32, i32* @ERESTARTSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @current, align 4
  %16 = call i64 @signal_pending(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %44

19:                                               ; preds = %10
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = call i32 @sock_error(%struct.sock* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @SS_UNCONNECTED, align 4
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  br label %44

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TCP_ESTABLISHED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = call i32 @release_sock(%struct.sock* %37)
  %39 = call i32 (...) @schedule()
  %40 = load %struct.sock*, %struct.sock** %2, align 8
  %41 = call i32 @lock_sock(%struct.sock* %40)
  br label %43

42:                                               ; preds = %30
  br label %44

43:                                               ; preds = %36
  br label %10

44:                                               ; preds = %42, %24, %18
  %45 = load i32, i32* @TASK_RUNNING, align 4
  %46 = call i32 @__set_current_state(i32 %45)
  %47 = load %struct.sock*, %struct.sock** %2, align 8
  %48 = call i32 @sk_sleep(%struct.sock* %47)
  %49 = call i32 @remove_wait_queue(i32 %48, i32* @wait)
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue_exclusive(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
