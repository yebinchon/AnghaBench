; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_cpu_present_cpu_mask.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_cpu_present_cpu_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@present_cpumask = common dso_local global i32 0, align 4
@present_cpumask_size = common dso_local global i64 0, align 8
@topo_max_cpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"/sys/devices/system/cpu/cpu%d\00", align 1
@MAX_PACKAGE_COUNT = common dso_local global i32 0, align 4
@MAX_DIE_PER_PACKAGE = common dso_local global i32 0, align 4
@cpu_cnt = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_cpu_present_cpu_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cpu_present_cpu_mask() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i64 @alloc_cpu_set(i32* @present_cpumask)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  store i64 %8, i64* @present_cpumask_size, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %56, %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @topo_max_cpus, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @snprintf(i8* %14, i32 256, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %18 = call i32* @opendir(i8* %17)
  store i32* %18, i32** %2, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = load i64, i64* %1, align 8
  %24 = load i32, i32* @present_cpumask, align 4
  %25 = call i32 @CPU_SET_S(i32 %22, i64 %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @get_physical_die_id(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @get_physical_package_id(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MAX_PACKAGE_COUNT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MAX_DIE_PER_PACKAGE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32**, i32*** @cpu_cnt, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %41, %37, %31
  br label %53

53:                                               ; preds = %52, %13
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @closedir(i32* %54)
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %9

59:                                               ; preds = %9
  ret void
}

declare dso_local i64 @alloc_cpu_set(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @CPU_SET_S(i32, i64, i32) #1

declare dso_local i32 @get_physical_die_id(i32) #1

declare dso_local i32 @get_physical_package_id(i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
