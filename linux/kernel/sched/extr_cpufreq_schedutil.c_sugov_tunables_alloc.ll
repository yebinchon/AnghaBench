; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_sugov_tunables_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_sugov_tunables_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sugov_tunables = type { i32 }
%struct.sugov_policy = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@global_tunables = common dso_local global %struct.sugov_tunables* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sugov_tunables* (%struct.sugov_policy*)* @sugov_tunables_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sugov_tunables* @sugov_tunables_alloc(%struct.sugov_policy* %0) #0 {
  %2 = alloca %struct.sugov_policy*, align 8
  %3 = alloca %struct.sugov_tunables*, align 8
  store %struct.sugov_policy* %0, %struct.sugov_policy** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.sugov_tunables* @kzalloc(i32 4, i32 %4)
  store %struct.sugov_tunables* %5, %struct.sugov_tunables** %3, align 8
  %6 = load %struct.sugov_tunables*, %struct.sugov_tunables** %3, align 8
  %7 = icmp ne %struct.sugov_tunables* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.sugov_tunables*, %struct.sugov_tunables** %3, align 8
  %10 = getelementptr inbounds %struct.sugov_tunables, %struct.sugov_tunables* %9, i32 0, i32 0
  %11 = load %struct.sugov_policy*, %struct.sugov_policy** %2, align 8
  %12 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %11, i32 0, i32 0
  %13 = call i32 @gov_attr_set_init(i32* %10, i32* %12)
  %14 = call i32 (...) @have_governor_per_policy()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = load %struct.sugov_tunables*, %struct.sugov_tunables** %3, align 8
  store %struct.sugov_tunables* %17, %struct.sugov_tunables** @global_tunables, align 8
  br label %18

18:                                               ; preds = %16, %8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.sugov_tunables*, %struct.sugov_tunables** %3, align 8
  ret %struct.sugov_tunables* %20
}

declare dso_local %struct.sugov_tunables* @kzalloc(i32, i32) #1

declare dso_local i32 @gov_attr_set_init(i32*, i32*) #1

declare dso_local i32 @have_governor_per_policy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
