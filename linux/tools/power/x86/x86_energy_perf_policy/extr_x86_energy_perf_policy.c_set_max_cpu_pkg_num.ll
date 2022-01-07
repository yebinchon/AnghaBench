; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_set_max_cpu_pkg_num.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_set_max_cpu_pkg_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_cpu_num = common dso_local global i32 0, align 4
@MAX_PACKAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cpu%d: %d >= MAX_PACKAGES (%d)\00", align 1
@max_pkg_num = common dso_local global i32 0, align 4
@pkg_present_set = common dso_local global i64 0, align 8
@first_cpu_in_pkg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_max_cpu_pkg_num(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @max_cpu_num, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* @max_cpu_num, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @get_pkg_num(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MAX_PACKAGES, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MAX_PACKAGES, align 4
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %9
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @max_pkg_num, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* @max_pkg_num, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i64, i64* @pkg_present_set, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 1, %29
  %31 = and i64 %27, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = load i64, i64* @pkg_present_set, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* @pkg_present_set, align 8
  %39 = load i32, i32* %2, align 4
  %40 = load i32*, i32** @first_cpu_in_pkg, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %33, %26
  ret i32 0
}

declare dso_local i32 @get_pkg_num(i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
