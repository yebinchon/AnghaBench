; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_for_each_online_target_cpu_in_set.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_for_each_online_target_cpu_in_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@topo_max_cpus = common dso_local global i32 0, align 4
@target_cpumask_size = common dso_local global i32 0, align 4
@target_cpumask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"/sys/devices/system/cpu/cpu%d/online\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (i32, i8*, i8*, i8*, i8*)*, i8*, i8*, i8*, i8*)* @for_each_online_target_cpu_in_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @for_each_online_target_cpu_in_set(void (i32, i8*, i8*, i8*, i8*)* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca void (i32, i8*, i8*, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store void (i32, i8*, i8*, i8*, i8*)* %0, void (i32, i8*, i8*, i8*, i8*)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %45, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @topo_max_cpus, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @target_cpumask_size, align 4
  %20 = load i32, i32* @target_cpumask, align 4
  %21 = call i32 @CPU_ISSET_S(i32 %18, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %45

24:                                               ; preds = %17
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @parse_int_file(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %12, align 4
  br label %31

30:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load void (i32, i8*, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*, i8*)** %6, align 8
  %36 = icmp ne void (i32, i8*, i8*, i8*, i8*)* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load void (i32, i8*, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*, i8*)** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %10, align 8
  call void %38(i32 %39, i8* %40, i8* %41, i8* %42, i8* %43)
  br label %44

44:                                               ; preds = %37, %34, %31
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %13

48:                                               ; preds = %13
  ret void
}

declare dso_local i32 @CPU_ISSET_S(i32, i32, i32) #1

declare dso_local i32 @parse_int_file(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
