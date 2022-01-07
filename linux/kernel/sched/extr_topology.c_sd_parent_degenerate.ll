; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_sd_parent_degenerate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_sd_parent_degenerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_domain = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@SD_LOAD_BALANCE = common dso_local global i64 0, align 8
@SD_BALANCE_NEWIDLE = common dso_local global i64 0, align 8
@SD_BALANCE_FORK = common dso_local global i64 0, align 8
@SD_BALANCE_EXEC = common dso_local global i64 0, align 8
@SD_ASYM_CPUCAPACITY = common dso_local global i64 0, align 8
@SD_SHARE_CPUCAPACITY = common dso_local global i64 0, align 8
@SD_SHARE_PKG_RESOURCES = common dso_local global i64 0, align 8
@SD_PREFER_SIBLING = common dso_local global i64 0, align 8
@SD_SHARE_POWERDOMAIN = common dso_local global i64 0, align 8
@nr_node_ids = common dso_local global i32 0, align 4
@SD_SERIALIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sched_domain*, %struct.sched_domain*)* @sd_parent_degenerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_parent_degenerate(%struct.sched_domain* %0, %struct.sched_domain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sched_domain*, align 8
  %5 = alloca %struct.sched_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sched_domain* %0, %struct.sched_domain** %4, align 8
  store %struct.sched_domain* %1, %struct.sched_domain** %5, align 8
  %8 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %9 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.sched_domain*, %struct.sched_domain** %5, align 8
  %12 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.sched_domain*, %struct.sched_domain** %5, align 8
  %15 = call i64 @sd_degenerate(%struct.sched_domain* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %20 = call i32 @sched_domain_span(%struct.sched_domain* %19)
  %21 = load %struct.sched_domain*, %struct.sched_domain** %5, align 8
  %22 = call i32 @sched_domain_span(%struct.sched_domain* %21)
  %23 = call i32 @cpumask_equal(i32 %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %73

26:                                               ; preds = %18
  %27 = load %struct.sched_domain*, %struct.sched_domain** %5, align 8
  %28 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.sched_domain*, %struct.sched_domain** %5, align 8
  %31 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp eq %struct.TYPE_2__* %29, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %26
  %37 = load i64, i64* @SD_LOAD_BALANCE, align 8
  %38 = load i64, i64* @SD_BALANCE_NEWIDLE, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* @SD_BALANCE_FORK, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @SD_BALANCE_EXEC, align 8
  %43 = or i64 %41, %42
  %44 = load i64, i64* @SD_ASYM_CPUCAPACITY, align 8
  %45 = or i64 %43, %44
  %46 = load i64, i64* @SD_SHARE_CPUCAPACITY, align 8
  %47 = or i64 %45, %46
  %48 = load i64, i64* @SD_SHARE_PKG_RESOURCES, align 8
  %49 = or i64 %47, %48
  %50 = load i64, i64* @SD_PREFER_SIBLING, align 8
  %51 = or i64 %49, %50
  %52 = load i64, i64* @SD_SHARE_POWERDOMAIN, align 8
  %53 = or i64 %51, %52
  %54 = xor i64 %53, -1
  %55 = load i64, i64* %7, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load i32, i32* @nr_node_ids, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %36
  %60 = load i64, i64* @SD_SERIALIZE, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %7, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %59, %36
  br label %65

65:                                               ; preds = %64, %26
  %66 = load i64, i64* %6, align 8
  %67 = xor i64 %66, -1
  %68 = load i64, i64* %7, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %73

72:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71, %25, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @sd_degenerate(%struct.sched_domain*) #1

declare dso_local i32 @cpumask_equal(i32, i32) #1

declare dso_local i32 @sched_domain_span(%struct.sched_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
