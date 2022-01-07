; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_count_float_printf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_count_float_printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%s%s:%.1f%%\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, float, i8*, i32, float)* @count_float_printf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_float_printf(i32 %0, i8* %1, float %2, i8* %3, i32 %4, float %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store float %2, float* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store float %5, float* %13, align 4
  %15 = load float, float* %13, align 4
  %16 = fpext float %15 to double
  %17 = fcmp une double %16, 0.000000e+00
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load float, float* %10, align 4
  %20 = load float, float* %13, align 4
  %21 = fcmp olt float %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %34

23:                                               ; preds = %18, %6
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i8*, i8** %9, align 8
  %31 = load float, float* %10, align 4
  %32 = call i32 @scnprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30, float %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %23, %22
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
