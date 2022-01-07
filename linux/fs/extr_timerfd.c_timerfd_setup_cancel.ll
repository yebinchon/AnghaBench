; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_timerfd.c_timerfd_setup_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_timerfd.c_timerfd_setup_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timerfd_ctx = type { i64, i32, i32, i32 }

@CLOCK_REALTIME = common dso_local global i64 0, align 8
@CLOCK_REALTIME_ALARM = common dso_local global i64 0, align 8
@TFD_TIMER_ABSTIME = common dso_local global i32 0, align 4
@TFD_TIMER_CANCEL_ON_SET = common dso_local global i32 0, align 4
@cancel_lock = common dso_local global i32 0, align 4
@cancel_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timerfd_ctx*, i32)* @timerfd_setup_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timerfd_setup_cancel(%struct.timerfd_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.timerfd_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.timerfd_ctx* %0, %struct.timerfd_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %5, i32 0, i32 2
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CLOCK_REALTIME, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CLOCK_REALTIME_ALARM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @TFD_TIMER_ABSTIME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TFD_TIMER_CANCEL_ON_SET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = call i32 @spin_lock(i32* @cancel_lock)
  %38 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %38, i32 0, i32 3
  %40 = call i32 @list_add_rcu(i32* %39, i32* @cancel_list)
  %41 = call i32 @spin_unlock(i32* @cancel_lock)
  br label %42

42:                                               ; preds = %34, %29
  br label %46

43:                                               ; preds = %24, %19, %13
  %44 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %45 = call i32 @__timerfd_remove_cancel(%struct.timerfd_ctx* %44)
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %47, i32 0, i32 2
  %49 = call i32 @spin_unlock(i32* %48)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__timerfd_remove_cancel(%struct.timerfd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
