; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_sugov_exit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_sugov_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.sugov_policy* }
%struct.sugov_policy = type { i32, %struct.sugov_tunables* }
%struct.sugov_tunables = type { i32 }

@global_tunables_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*)* @sugov_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sugov_exit(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.sugov_policy*, align 8
  %4 = alloca %struct.sugov_tunables*, align 8
  %5 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %7 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %6, i32 0, i32 0
  %8 = load %struct.sugov_policy*, %struct.sugov_policy** %7, align 8
  store %struct.sugov_policy* %8, %struct.sugov_policy** %3, align 8
  %9 = load %struct.sugov_policy*, %struct.sugov_policy** %3, align 8
  %10 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %9, i32 0, i32 1
  %11 = load %struct.sugov_tunables*, %struct.sugov_tunables** %10, align 8
  store %struct.sugov_tunables* %11, %struct.sugov_tunables** %4, align 8
  %12 = call i32 @mutex_lock(i32* @global_tunables_lock)
  %13 = load %struct.sugov_tunables*, %struct.sugov_tunables** %4, align 8
  %14 = getelementptr inbounds %struct.sugov_tunables, %struct.sugov_tunables* %13, i32 0, i32 0
  %15 = load %struct.sugov_policy*, %struct.sugov_policy** %3, align 8
  %16 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %15, i32 0, i32 0
  %17 = call i32 @gov_attr_set_put(i32* %14, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 0
  store %struct.sugov_policy* null, %struct.sugov_policy** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.sugov_tunables*, %struct.sugov_tunables** %4, align 8
  %24 = call i32 @sugov_tunables_free(%struct.sugov_tunables* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = call i32 @mutex_unlock(i32* @global_tunables_lock)
  %27 = load %struct.sugov_policy*, %struct.sugov_policy** %3, align 8
  %28 = call i32 @sugov_kthread_stop(%struct.sugov_policy* %27)
  %29 = load %struct.sugov_policy*, %struct.sugov_policy** %3, align 8
  %30 = call i32 @sugov_policy_free(%struct.sugov_policy* %29)
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %32 = call i32 @cpufreq_disable_fast_switch(%struct.cpufreq_policy* %31)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gov_attr_set_put(i32*, i32*) #1

declare dso_local i32 @sugov_tunables_free(%struct.sugov_tunables*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sugov_kthread_stop(%struct.sugov_policy*) #1

declare dso_local i32 @sugov_policy_free(%struct.sugov_policy*) #1

declare dso_local i32 @cpufreq_disable_fast_switch(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
