; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_set_domain_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_set_domain_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_domain = type { i32, i32 }
%struct.sched_domain_attr = type { i32 }

@default_relax_domain_level = common dso_local global i32 0, align 4
@SD_BALANCE_WAKE = common dso_local global i32 0, align 4
@SD_BALANCE_NEWIDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_domain*, %struct.sched_domain_attr*)* @set_domain_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_domain_attribute(%struct.sched_domain* %0, %struct.sched_domain_attr* %1) #0 {
  %3 = alloca %struct.sched_domain*, align 8
  %4 = alloca %struct.sched_domain_attr*, align 8
  %5 = alloca i32, align 4
  store %struct.sched_domain* %0, %struct.sched_domain** %3, align 8
  store %struct.sched_domain_attr* %1, %struct.sched_domain_attr** %4, align 8
  %6 = load %struct.sched_domain_attr*, %struct.sched_domain_attr** %4, align 8
  %7 = icmp ne %struct.sched_domain_attr* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.sched_domain_attr*, %struct.sched_domain_attr** %4, align 8
  %10 = getelementptr inbounds %struct.sched_domain_attr, %struct.sched_domain_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8, %2
  %14 = load i32, i32* @default_relax_domain_level, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %47

17:                                               ; preds = %13
  %18 = load i32, i32* @default_relax_domain_level, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %17
  br label %24

20:                                               ; preds = %8
  %21 = load %struct.sched_domain_attr*, %struct.sched_domain_attr** %4, align 8
  %22 = getelementptr inbounds %struct.sched_domain_attr, %struct.sched_domain_attr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %19
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.sched_domain*, %struct.sched_domain** %3, align 8
  %27 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load i32, i32* @SD_BALANCE_WAKE, align 4
  %32 = load i32, i32* @SD_BALANCE_NEWIDLE, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.sched_domain*, %struct.sched_domain** %3, align 8
  %36 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %47

39:                                               ; preds = %24
  %40 = load i32, i32* @SD_BALANCE_WAKE, align 4
  %41 = load i32, i32* @SD_BALANCE_NEWIDLE, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.sched_domain*, %struct.sched_domain** %3, align 8
  %44 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %16, %39, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
