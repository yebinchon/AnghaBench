; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_debug.c_sched_debug_header.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_debug.c_sched_debug_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Sched Debug Version: v0.11, %s %.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%-40s: %Ld.%06ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ktime\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sched_clk\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"cpu_clk\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%-40s: %Ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"jiffies\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"sysctl_sched\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"  .%-40s: %Ld.%06ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"sysctl_sched_latency\00", align 1
@sysctl_sched_latency = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"sysctl_sched_min_granularity\00", align 1
@sysctl_sched_min_granularity = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"sysctl_sched_wakeup_granularity\00", align 1
@sysctl_sched_wakeup_granularity = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"  .%-40s: %Ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"sysctl_sched_child_runs_first\00", align 1
@sysctl_sched_child_runs_first = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"sysctl_sched_features\00", align 1
@sysctl_sched_features = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"  .%-40s: %d (%s)\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"sysctl_sched_tunable_scaling\00", align 1
@sysctl_sched_tunable_scaling = common dso_local global i64 0, align 8
@sched_tunable_scaling_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @sched_debug_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_debug_header(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = call i32 (...) @ktime_get()
  %10 = call i32 @ktime_to_ns(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = call i32 (...) @sched_clock()
  store i32 %11, i32* %4, align 4
  %12 = call i32 (...) @local_clock()
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @local_irq_restore(i64 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %16 = call %struct.TYPE_2__* (...) @init_utsname()
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_2__* (...) @init_utsname()
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcspn(i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = trunc i64 %22 to i32
  %24 = call %struct.TYPE_2__* (...) @init_utsname()
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23, i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (i32, ...) bitcast (i32 (...)* @SPLIT_NS to i32 (i32, ...)*)(i32 %29)
  %31 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i32, ...) bitcast (i32 (...)* @SPLIT_NS to i32 (i32, ...)*)(i32 %33)
  %35 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @SPLIT_NS to i32 (i32, ...)*)(i32 %37)
  %39 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %41 = load i32, i32* @jiffies, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %45 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %46 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %47 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %48 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %49 = load i32, i32* @sysctl_sched_latency, align 4
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @SPLIT_NS to i32 (i32, ...)*)(i32 %49)
  %51 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %53 = load i32, i32* @sysctl_sched_min_granularity, align 4
  %54 = call i32 (i32, ...) bitcast (i32 (...)* @SPLIT_NS to i32 (i32, ...)*)(i32 %53)
  %55 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %57 = load i32, i32* @sysctl_sched_wakeup_granularity, align 4
  %58 = call i32 (i32, ...) bitcast (i32 (...)* @SPLIT_NS to i32 (i32, ...)*)(i32 %57)
  %59 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %61 = load i32, i32* @sysctl_sched_child_runs_first, align 4
  %62 = sext i32 %61 to i64
  %63 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i64 %62)
  %64 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %65 = load i32, i32* @sysctl_sched_features, align 4
  %66 = sext i32 %65 to i64
  %67 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i64 %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %69 = load i64, i64* @sysctl_sched_tunable_scaling, align 8
  %70 = load i32*, i32** @sched_tunable_scaling_names, align 8
  %71 = load i64, i64* @sysctl_sched_tunable_scaling, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i64 %69, i32 %73)
  %75 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %76 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @sched_clock(...) #1

declare dso_local i32 @local_clock(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @SEQ_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @init_utsname(...) #1

declare dso_local i64 @strcspn(i32, i8*) #1

declare dso_local i32 @SPLIT_NS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
