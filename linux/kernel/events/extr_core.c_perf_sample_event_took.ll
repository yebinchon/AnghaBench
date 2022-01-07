; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_sample_event_took.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_sample_event_took.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@perf_sample_allowed_ns = common dso_local global i32 0, align 4
@running_sample_length = common dso_local global i32 0, align 4
@NR_ACCUMULATED_SAMPLES = common dso_local global i32 0, align 4
@__report_avg = common dso_local global i32 0, align 4
@__report_allowed = common dso_local global i32 0, align 4
@TICK_NSEC = common dso_local global i32 0, align 4
@sysctl_perf_cpu_time_max_percent = common dso_local global i32 0, align 4
@max_samples_per_tick = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@sysctl_perf_event_sample_rate = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@perf_sample_period_ns = common dso_local global i32 0, align 4
@perf_duration_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"perf: interrupt took too long (%lld > %lld), lowering kernel.perf_event_max_sample_rate to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_sample_event_took(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @perf_sample_allowed_ns, align 4
  %8 = call i32 @READ_ONCE(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %72

12:                                               ; preds = %1
  %13 = load i32, i32* @running_sample_length, align 4
  %14 = call i32 @__this_cpu_read(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NR_ACCUMULATED_SAMPLES, align 4
  %17 = sdiv i32 %15, %16
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @running_sample_length, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @__this_cpu_write(i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NR_ACCUMULATED_SAMPLES, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %12
  br label %72

33:                                               ; preds = %12
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* @__report_avg, align 4
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* @__report_allowed, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 %36, 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @TICK_NSEC, align 4
  %41 = sdiv i32 %40, 100
  %42 = load i32, i32* @sysctl_perf_cpu_time_max_percent, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sdiv i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %52

51:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, i32* @perf_sample_allowed_ns, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @WRITE_ONCE(i32 %53, i32 %54)
  %56 = load i32, i32* @max_samples_per_tick, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @WRITE_ONCE(i32 %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @HZ, align 4
  %61 = mul nsw i32 %59, %60
  store i32 %61, i32* @sysctl_perf_event_sample_rate, align 4
  %62 = load i32, i32* @NSEC_PER_SEC, align 4
  %63 = load i32, i32* @sysctl_perf_event_sample_rate, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* @perf_sample_period_ns, align 4
  %65 = call i32 @irq_work_queue(i32* @perf_duration_work)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %52
  %68 = load i32, i32* @__report_avg, align 4
  %69 = load i32, i32* @__report_allowed, align 4
  %70 = load i32, i32* @sysctl_perf_event_sample_rate, align 4
  %71 = call i32 @early_printk(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %11, %32, %67, %52
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @irq_work_queue(i32*) #1

declare dso_local i32 @early_printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
