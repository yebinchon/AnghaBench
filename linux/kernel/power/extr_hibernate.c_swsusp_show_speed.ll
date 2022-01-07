; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_swsusp_show_speed.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_swsusp_show_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s %u kbytes in %u.%02u seconds (%u.%02u MB/s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swsusp_show_speed(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ktime_sub(i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @NSEC_PER_MSEC, align 4
  %19 = mul nsw i32 10, %18
  %20 = call i32 @ktime_divns(i32 %17, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = sdiv i32 %27, 1024
  %29 = mul i32 %26, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = mul i32 %30, 100
  %32 = load i32, i32* %11, align 4
  %33 = udiv i32 %31, %32
  store i32 %33, i32* %13, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = udiv i32 %36, 100
  %38 = load i32, i32* %11, align 4
  %39 = urem i32 %38, 100
  %40 = load i32, i32* %13, align 4
  %41 = udiv i32 %40, 1000
  %42 = load i32, i32* %13, align 4
  %43 = urem i32 %42, 1000
  %44 = udiv i32 %43, 10
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35, i32 %37, i32 %39, i32 %41, i32 %44)
  ret void
}

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_divns(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
