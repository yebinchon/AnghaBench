; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_ignore_dl_rate_limit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_ignore_dl_rate_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sugov_cpu = type { i64, i32 }
%struct.sugov_policy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sugov_cpu*, %struct.sugov_policy*)* @ignore_dl_rate_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ignore_dl_rate_limit(%struct.sugov_cpu* %0, %struct.sugov_policy* %1) #0 {
  %3 = alloca %struct.sugov_cpu*, align 8
  %4 = alloca %struct.sugov_policy*, align 8
  store %struct.sugov_cpu* %0, %struct.sugov_cpu** %3, align 8
  store %struct.sugov_policy* %1, %struct.sugov_policy** %4, align 8
  %5 = load %struct.sugov_cpu*, %struct.sugov_cpu** %3, align 8
  %6 = getelementptr inbounds %struct.sugov_cpu, %struct.sugov_cpu* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @cpu_rq(i32 %7)
  %9 = call i64 @cpu_bw_dl(i32 %8)
  %10 = load %struct.sugov_cpu*, %struct.sugov_cpu** %3, align 8
  %11 = getelementptr inbounds %struct.sugov_cpu, %struct.sugov_cpu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.sugov_policy*, %struct.sugov_policy** %4, align 8
  %16 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

declare dso_local i64 @cpu_bw_dl(i32) #1

declare dso_local i32 @cpu_rq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
