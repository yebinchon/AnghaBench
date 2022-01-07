; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_wait_thread_run.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_wait_thread_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_thread = type { i32 }

@pktgen_thread_lock = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktgen_thread*)* @pktgen_wait_thread_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pktgen_wait_thread_run(%struct.pktgen_thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pktgen_thread*, align 8
  store %struct.pktgen_thread* %0, %struct.pktgen_thread** %3, align 8
  br label %4

4:                                                ; preds = %16, %1
  %5 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %6 = call i64 @thread_is_running(%struct.pktgen_thread* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = call i32 @mutex_unlock(i32* @pktgen_thread_lock)
  %10 = call i32 @msleep_interruptible(i32 100)
  %11 = call i32 @mutex_lock(i32* @pktgen_thread_lock)
  %12 = load i32, i32* @current, align 4
  %13 = call i64 @signal_pending(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %18

16:                                               ; preds = %8
  br label %4

17:                                               ; preds = %4
  store i32 1, i32* %2, align 4
  br label %19

18:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @thread_is_running(%struct.pktgen_thread*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
