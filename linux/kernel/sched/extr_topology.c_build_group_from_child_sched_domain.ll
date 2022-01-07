; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_build_group_from_child_sched_domain.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_build_group_from_child_sched_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_group = type { i32 }
%struct.sched_domain = type { %struct.sched_domain* }
%struct.cpumask = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sched_group* (%struct.sched_domain*, i32)* @build_group_from_child_sched_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sched_group* @build_group_from_child_sched_domain(%struct.sched_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.sched_group*, align 8
  %4 = alloca %struct.sched_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sched_group*, align 8
  %7 = alloca %struct.cpumask*, align 8
  store %struct.sched_domain* %0, %struct.sched_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i64 (...) @cpumask_size()
  %9 = add i64 4, %8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @cpu_to_node(i32 %11)
  %13 = call %struct.sched_group* @kzalloc_node(i64 %9, i32 %10, i32 %12)
  store %struct.sched_group* %13, %struct.sched_group** %6, align 8
  %14 = load %struct.sched_group*, %struct.sched_group** %6, align 8
  %15 = icmp ne %struct.sched_group* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.sched_group* null, %struct.sched_group** %3, align 8
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.sched_group*, %struct.sched_group** %6, align 8
  %19 = call %struct.cpumask* @sched_group_span(%struct.sched_group* %18)
  store %struct.cpumask* %19, %struct.cpumask** %7, align 8
  %20 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %21 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %20, i32 0, i32 0
  %22 = load %struct.sched_domain*, %struct.sched_domain** %21, align 8
  %23 = icmp ne %struct.sched_domain* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %26 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %27 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %26, i32 0, i32 0
  %28 = load %struct.sched_domain*, %struct.sched_domain** %27, align 8
  %29 = call i32 @sched_domain_span(%struct.sched_domain* %28)
  %30 = call i32 @cpumask_copy(%struct.cpumask* %25, i32 %29)
  br label %36

31:                                               ; preds = %17
  %32 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %33 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %34 = call i32 @sched_domain_span(%struct.sched_domain* %33)
  %35 = call i32 @cpumask_copy(%struct.cpumask* %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.sched_group*, %struct.sched_group** %6, align 8
  %38 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %37, i32 0, i32 0
  %39 = call i32 @atomic_inc(i32* %38)
  %40 = load %struct.sched_group*, %struct.sched_group** %6, align 8
  store %struct.sched_group* %40, %struct.sched_group** %3, align 8
  br label %41

41:                                               ; preds = %36, %16
  %42 = load %struct.sched_group*, %struct.sched_group** %3, align 8
  ret %struct.sched_group* %42
}

declare dso_local %struct.sched_group* @kzalloc_node(i64, i32, i32) #1

declare dso_local i64 @cpumask_size(...) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.cpumask* @sched_group_span(%struct.sched_group*) #1

declare dso_local i32 @cpumask_copy(%struct.cpumask*, i32) #1

declare dso_local i32 @sched_domain_span(%struct.sched_domain*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
