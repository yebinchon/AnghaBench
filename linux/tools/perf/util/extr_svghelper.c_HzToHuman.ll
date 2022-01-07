; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_HzToHuman.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_HzToHuman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HzToHuman.buffer = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"%9lli\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" %6lli Mhz\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" %6.2f Ghz\00", align 1
@turbo_frequency = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Turbo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @HzToHuman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @HzToHuman(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i32 @memset(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @HzToHuman.buffer, i64 0, i64 0), i32 0, i32 1024)
  %5 = load i64, i64* %2, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @HzToHuman.buffer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %6)
  %8 = load i64, i64* %3, align 8
  %9 = icmp ugt i64 %8, 1000
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = add i64 %11, 500
  %13 = udiv i64 %12, 1000
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @HzToHuman.buffer, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i64, i64* %3, align 8
  %17 = icmp ugt i64 %16, 1500000
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = uitofp i64 %19 to double
  %21 = fadd double %20, 5.000000e+03
  %22 = fdiv double %21, 1.000000e+06
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @HzToHuman.buffer, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), double %22)
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @turbo_frequency, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @HzToHuman.buffer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @HzToHuman.buffer, i64 0, i64 0)
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
