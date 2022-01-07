; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_sd_degenerate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_sd_degenerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_domain = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@SD_LOAD_BALANCE = common dso_local global i32 0, align 4
@SD_BALANCE_NEWIDLE = common dso_local global i32 0, align 4
@SD_BALANCE_FORK = common dso_local global i32 0, align 4
@SD_BALANCE_EXEC = common dso_local global i32 0, align 4
@SD_SHARE_CPUCAPACITY = common dso_local global i32 0, align 4
@SD_ASYM_CPUCAPACITY = common dso_local global i32 0, align 4
@SD_SHARE_PKG_RESOURCES = common dso_local global i32 0, align 4
@SD_SHARE_POWERDOMAIN = common dso_local global i32 0, align 4
@SD_WAKE_AFFINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sched_domain*)* @sd_degenerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_degenerate(%struct.sched_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sched_domain*, align 8
  store %struct.sched_domain* %0, %struct.sched_domain** %3, align 8
  %4 = load %struct.sched_domain*, %struct.sched_domain** %3, align 8
  %5 = call i32 @sched_domain_span(%struct.sched_domain* %4)
  %6 = call i32 @cpumask_weight(i32 %5)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %51

9:                                                ; preds = %1
  %10 = load %struct.sched_domain*, %struct.sched_domain** %3, align 8
  %11 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SD_LOAD_BALANCE, align 4
  %14 = load i32, i32* @SD_BALANCE_NEWIDLE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SD_BALANCE_FORK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SD_BALANCE_EXEC, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SD_SHARE_CPUCAPACITY, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SD_ASYM_CPUCAPACITY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SD_SHARE_PKG_RESOURCES, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SD_SHARE_POWERDOMAIN, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %12, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %9
  %31 = load %struct.sched_domain*, %struct.sched_domain** %3, align 8
  %32 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.sched_domain*, %struct.sched_domain** %3, align 8
  %35 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %51

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %9
  %43 = load %struct.sched_domain*, %struct.sched_domain** %3, align 8
  %44 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SD_WAKE_AFFINE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %51

50:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49, %40, %8
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @cpumask_weight(i32) #1

declare dso_local i32 @sched_domain_span(%struct.sched_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
