; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_cpu_target_cpu_mask.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_cpu_target_cpu_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target_cpumask = common dso_local global i32 0, align 4
@target_cpumask_size = common dso_local global i64 0, align 8
@max_target_cpus = common dso_local global i32 0, align 4
@target_cpus = common dso_local global i32* null, align 8
@present_cpumask_size = common dso_local global i32 0, align 4
@present_cpumask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_cpu_target_cpu_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cpu_target_cpu_mask() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i64 @alloc_cpu_set(i32* @target_cpumask)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  store i64 %4, i64* @target_cpumask_size, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %29, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @max_target_cpus, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load i32*, i32** @target_cpus, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @present_cpumask_size, align 4
  %16 = load i32, i32* @present_cpumask, align 4
  %17 = call i32 @CPU_ISSET_S(i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  br label %29

20:                                               ; preds = %9
  %21 = load i32*, i32** @target_cpus, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %1, align 8
  %27 = load i32, i32* @target_cpumask, align 4
  %28 = call i32 @CPU_SET_S(i32 %25, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %19
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %5

32:                                               ; preds = %5
  ret void
}

declare dso_local i64 @alloc_cpu_set(i32*) #1

declare dso_local i32 @CPU_ISSET_S(i32, i32, i32) #1

declare dso_local i32 @CPU_SET_S(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
