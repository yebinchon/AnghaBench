; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_init_data_structures.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_init_data_structures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_max_cpu_pkg_num = common dso_local global i32 0, align 4
@max_cpu_num = common dso_local global i64 0, align 8
@cpu_setsize = common dso_local global i32 0, align 4
@cpu_present_set = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"CPU_ALLOC\00", align 1
@mark_cpu_present = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_data_structures() #0 {
  %1 = load i32, i32* @set_max_cpu_pkg_num, align 4
  %2 = call i32 @for_all_proc_cpus(i32 %1)
  %3 = load i64, i64* @max_cpu_num, align 8
  %4 = add nsw i64 %3, 1
  %5 = call i32 @CPU_ALLOC_SIZE(i64 %4)
  store i32 %5, i32* @cpu_setsize, align 4
  %6 = load i64, i64* @max_cpu_num, align 8
  %7 = add nsw i64 %6, 1
  %8 = call i32* @CPU_ALLOC(i64 %7)
  store i32* %8, i32** @cpu_present_set, align 8
  %9 = load i32*, i32** @cpu_present_set, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @err(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* @cpu_setsize, align 4
  %15 = load i32*, i32** @cpu_present_set, align 8
  %16 = call i32 @CPU_ZERO_S(i32 %14, i32* %15)
  %17 = load i32, i32* @mark_cpu_present, align 4
  %18 = call i32 @for_all_proc_cpus(i32 %17)
  ret void
}

declare dso_local i32 @for_all_proc_cpus(i32) #1

declare dso_local i32 @CPU_ALLOC_SIZE(i64) #1

declare dso_local i32* @CPU_ALLOC(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @CPU_ZERO_S(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
