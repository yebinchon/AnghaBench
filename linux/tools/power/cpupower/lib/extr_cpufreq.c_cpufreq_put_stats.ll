; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_put_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_put_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_stats = type { %struct.cpufreq_stats*, %struct.cpufreq_stats* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpufreq_put_stats(%struct.cpufreq_stats* %0) #0 {
  %2 = alloca %struct.cpufreq_stats*, align 8
  %3 = alloca %struct.cpufreq_stats*, align 8
  %4 = alloca %struct.cpufreq_stats*, align 8
  store %struct.cpufreq_stats* %0, %struct.cpufreq_stats** %2, align 8
  %5 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %6 = icmp ne %struct.cpufreq_stats* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  %9 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %10 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %9, i32 0, i32 1
  %11 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %10, align 8
  store %struct.cpufreq_stats* %11, %struct.cpufreq_stats** %3, align 8
  br label %12

12:                                               ; preds = %15, %8
  %13 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %3, align 8
  %14 = icmp ne %struct.cpufreq_stats* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %3, align 8
  %17 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %16, i32 0, i32 0
  %18 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %17, align 8
  store %struct.cpufreq_stats* %18, %struct.cpufreq_stats** %4, align 8
  %19 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %3, align 8
  %20 = call i32 @free(%struct.cpufreq_stats* %19)
  %21 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %4, align 8
  store %struct.cpufreq_stats* %21, %struct.cpufreq_stats** %3, align 8
  br label %12

22:                                               ; preds = %7, %12
  ret void
}

declare dso_local i32 @free(%struct.cpufreq_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
