; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_sof_wait_trace_avail.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_sof_wait_trace_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_sof_dev*, i32, i64)* @sof_wait_trace_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sof_wait_trace_avail(%struct.snd_sof_dev* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @sof_trace_avail(%struct.snd_sof_dev* %10, i32 %11, i64 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %4, align 8
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %20 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %25 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %30 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  store i64 0, i64* %4, align 8
  br label %53

31:                                               ; preds = %23, %18
  %32 = load i32, i32* @current, align 4
  %33 = call i32 @init_waitqueue_entry(i32* %8, i32 %32)
  %34 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %35 = call i32 @set_current_state(i32 %34)
  %36 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %37 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %36, i32 0, i32 1
  %38 = call i32 @add_wait_queue(i32* %37, i32* %8)
  %39 = load i32, i32* @current, align 4
  %40 = call i32 @signal_pending(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %44 = call i32 @schedule_timeout(i32 %43)
  br label %45

45:                                               ; preds = %42, %31
  %46 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %47 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %46, i32 0, i32 1
  %48 = call i32 @remove_wait_queue(i32* %47, i32* %8)
  %49 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @sof_trace_avail(%struct.snd_sof_dev* %49, i32 %50, i64 %51)
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %45, %28, %16
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i64 @sof_trace_avail(%struct.snd_sof_dev*, i32, i64) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
