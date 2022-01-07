; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_delta_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_delta_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32 }
%struct.core_data = type { i32 }
%struct.pkg_data = type { i32 }

@CPU_IS_FIRST_THREAD_IN_CORE = common dso_local global i32 0, align 4
@CPU_IS_FIRST_CORE_IN_PACKAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delta_cpu(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2, %struct.thread_data* %3, %struct.core_data* %4, %struct.pkg_data* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread_data*, align 8
  %9 = alloca %struct.core_data*, align 8
  %10 = alloca %struct.pkg_data*, align 8
  %11 = alloca %struct.thread_data*, align 8
  %12 = alloca %struct.core_data*, align 8
  %13 = alloca %struct.pkg_data*, align 8
  %14 = alloca i32, align 4
  store %struct.thread_data* %0, %struct.thread_data** %8, align 8
  store %struct.core_data* %1, %struct.core_data** %9, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %10, align 8
  store %struct.thread_data* %3, %struct.thread_data** %11, align 8
  store %struct.core_data* %4, %struct.core_data** %12, align 8
  store %struct.pkg_data* %5, %struct.pkg_data** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.thread_data*, %struct.thread_data** %8, align 8
  %16 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CPU_IS_FIRST_THREAD_IN_CORE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load %struct.core_data*, %struct.core_data** %9, align 8
  %23 = load %struct.core_data*, %struct.core_data** %12, align 8
  %24 = call i32 @delta_core(%struct.core_data* %22, %struct.core_data* %23)
  br label %25

25:                                               ; preds = %21, %6
  %26 = load %struct.thread_data*, %struct.thread_data** %8, align 8
  %27 = load %struct.thread_data*, %struct.thread_data** %11, align 8
  %28 = load %struct.core_data*, %struct.core_data** %12, align 8
  %29 = call i32 @delta_thread(%struct.thread_data* %26, %struct.thread_data* %27, %struct.core_data* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %7, align 4
  br label %47

34:                                               ; preds = %25
  %35 = load %struct.thread_data*, %struct.thread_data** %8, align 8
  %36 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CPU_IS_FIRST_CORE_IN_PACKAGE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.pkg_data*, %struct.pkg_data** %10, align 8
  %43 = load %struct.pkg_data*, %struct.pkg_data** %13, align 8
  %44 = call i32 @delta_package(%struct.pkg_data* %42, %struct.pkg_data* %43)
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %32
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @delta_core(%struct.core_data*, %struct.core_data*) #1

declare dso_local i32 @delta_thread(%struct.thread_data*, %struct.thread_data*, %struct.core_data*) #1

declare dso_local i32 @delta_package(%struct.pkg_data*, %struct.pkg_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
