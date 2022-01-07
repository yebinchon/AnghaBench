; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_freq_constraints_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_freq_constraints_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freq_constraints = type { i32, %struct.pm_qos_constraints, i32, %struct.pm_qos_constraints }
%struct.pm_qos_constraints = type { i32*, i32, i8*, i8*, i8*, i32 }

@FREQ_QOS_MIN_DEFAULT_VALUE = common dso_local global i8* null, align 8
@PM_QOS_MAX = common dso_local global i32 0, align 4
@FREQ_QOS_MAX_DEFAULT_VALUE = common dso_local global i8* null, align 8
@PM_QOS_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freq_constraints_init(%struct.freq_constraints* %0) #0 {
  %2 = alloca %struct.freq_constraints*, align 8
  %3 = alloca %struct.pm_qos_constraints*, align 8
  store %struct.freq_constraints* %0, %struct.freq_constraints** %2, align 8
  %4 = load %struct.freq_constraints*, %struct.freq_constraints** %2, align 8
  %5 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %4, i32 0, i32 3
  store %struct.pm_qos_constraints* %5, %struct.pm_qos_constraints** %3, align 8
  %6 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %7 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %6, i32 0, i32 5
  %8 = call i32 @plist_head_init(i32* %7)
  %9 = load i8*, i8** @FREQ_QOS_MIN_DEFAULT_VALUE, align 8
  %10 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %11 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %10, i32 0, i32 4
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @FREQ_QOS_MIN_DEFAULT_VALUE, align 8
  %13 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %14 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @FREQ_QOS_MIN_DEFAULT_VALUE, align 8
  %16 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %17 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @PM_QOS_MAX, align 4
  %19 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %20 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.freq_constraints*, %struct.freq_constraints** %2, align 8
  %22 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %21, i32 0, i32 2
  %23 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %24 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %26 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %27)
  %29 = load %struct.freq_constraints*, %struct.freq_constraints** %2, align 8
  %30 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %29, i32 0, i32 1
  store %struct.pm_qos_constraints* %30, %struct.pm_qos_constraints** %3, align 8
  %31 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %32 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %31, i32 0, i32 5
  %33 = call i32 @plist_head_init(i32* %32)
  %34 = load i8*, i8** @FREQ_QOS_MAX_DEFAULT_VALUE, align 8
  %35 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %36 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @FREQ_QOS_MAX_DEFAULT_VALUE, align 8
  %38 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %39 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @FREQ_QOS_MAX_DEFAULT_VALUE, align 8
  %41 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %42 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @PM_QOS_MIN, align 4
  %44 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %45 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.freq_constraints*, %struct.freq_constraints** %2, align 8
  %47 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %46, i32 0, i32 0
  %48 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %49 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %3, align 8
  %51 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %52)
  ret void
}

declare dso_local i32 @plist_head_init(i32*) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
