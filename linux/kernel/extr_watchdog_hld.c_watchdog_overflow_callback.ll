; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_watchdog_hld.c_watchdog_overflow_callback.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_watchdog_hld.c_watchdog_overflow_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }

@watchdog_nmi_touch = common dso_local global i32 0, align 4
@hard_watchdog_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Watchdog detected hard LOCKUP on cpu %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@sysctl_hardlockup_all_cpu_backtrace = common dso_local global i64 0, align 8
@hardlockup_allcpu_dumped = common dso_local global i32 0, align 4
@hardlockup_panic = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Hard LOCKUP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*)* @watchdog_overflow_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watchdog_overflow_callback(%struct.perf_event* %0, %struct.perf_sample_data* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_sample_data*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @watchdog_nmi_touch, align 4
  %12 = call i32 @__this_cpu_read(i32 %11)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @watchdog_nmi_touch, align 4
  %16 = call i32 @__this_cpu_write(i32 %15, i32 0)
  br label %63

17:                                               ; preds = %3
  %18 = call i32 (...) @watchdog_check_timestamp()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %63

21:                                               ; preds = %17
  %22 = call i64 (...) @is_hardlockup()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %21
  %25 = call i32 (...) @smp_processor_id()
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @hard_watchdog_warn, align 4
  %27 = call i32 @__this_cpu_read(i32 %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %63

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @pr_emerg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 (...) @print_modules()
  %34 = load i32, i32* @current, align 4
  %35 = call i32 @print_irqtrace_events(i32 %34)
  %36 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %37 = icmp ne %struct.pt_regs* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %40 = call i32 @show_regs(%struct.pt_regs* %39)
  br label %43

41:                                               ; preds = %30
  %42 = call i32 (...) @dump_stack()
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i64, i64* @sysctl_hardlockup_all_cpu_backtrace, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = call i32 @test_and_set_bit(i32 0, i32* @hardlockup_allcpu_dumped)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 (...) @trigger_allbutself_cpu_backtrace()
  br label %51

51:                                               ; preds = %49, %46, %43
  %52 = load i64, i64* @hardlockup_panic, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %56 = call i32 @nmi_panic(%struct.pt_regs* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @hard_watchdog_warn, align 4
  %59 = call i32 @__this_cpu_write(i32 %58, i32 1)
  br label %63

60:                                               ; preds = %21
  %61 = load i32, i32* @hard_watchdog_warn, align 4
  %62 = call i32 @__this_cpu_write(i32 %61, i32 0)
  br label %63

63:                                               ; preds = %60, %57, %29, %20, %14
  ret void
}

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i32 @watchdog_check_timestamp(...) #1

declare dso_local i64 @is_hardlockup(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pr_emerg(i8*, i32) #1

declare dso_local i32 @print_modules(...) #1

declare dso_local i32 @print_irqtrace_events(i32) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @trigger_allbutself_cpu_backtrace(...) #1

declare dso_local i32 @nmi_panic(%struct.pt_regs*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
