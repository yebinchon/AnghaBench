; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_cpustat_user.c_cpu_stat_inject_cpu_frequency_event.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_cpustat_user.c_cpu_stat_inject_cpu_frequency_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUFREQ_MAX_SYSFS_PATH = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to open scaling_max_freq, errno=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@CPUFREQ_LOWEST_FREQ = common dso_local global i32 0, align 4
@CPUFREQ_HIGHEST_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpu_stat_inject_cpu_frequency_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_stat_inject_cpu_frequency_event() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CPUFREQ_MAX_SYSFS_PATH, align 4
  %5 = load i32, i32* @O_WRONLY, align 4
  %6 = call i32 @open(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* %1, align 4
  br label %40

13:                                               ; preds = %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CPUFREQ_LOWEST_FREQ, align 4
  %16 = load i32, i32* @CPUFREQ_LOWEST_FREQ, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = call i32 @write(i32 %14, i32 %15, i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %36

24:                                               ; preds = %13
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @CPUFREQ_HIGHEST_FREQ, align 4
  %27 = load i32, i32* @CPUFREQ_HIGHEST_FREQ, align 4
  %28 = call i32 @strlen(i32 %27)
  %29 = call i32 @write(i32 %25, i32 %26, i32 %28)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %36

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %32, %21
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i32, i32* %2, align 4
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %36, %9
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
