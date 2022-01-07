; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_node_has_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_node_has_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmask = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @node_has_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_has_cpus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmask*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call %struct.bitmask* (...) @numa_allocate_cpumask()
  store %struct.bitmask* %6, %struct.bitmask** %4, align 8
  %7 = load %struct.bitmask*, %struct.bitmask** %4, align 8
  %8 = icmp ne %struct.bitmask* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.bitmask*, %struct.bitmask** %4, align 8
  %12 = call i32 @numa_node_to_cpus(i32 %10, %struct.bitmask* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.bitmask*, %struct.bitmask** %4, align 8
  %18 = getelementptr inbounds %struct.bitmask, %struct.bitmask* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.bitmask*, %struct.bitmask** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @numa_bitmask_isbitset(%struct.bitmask* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %33

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %15

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31, %9, %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.bitmask* @numa_allocate_cpumask(...) #1

declare dso_local i32 @numa_node_to_cpus(i32, %struct.bitmask*) #1

declare dso_local i64 @numa_bitmask_isbitset(%struct.bitmask*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
