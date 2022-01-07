; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rodata_test.c_rodata_test.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rodata_test.c_rodata_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rodata_test_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"test 1 fails (start data)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"test data was not read only\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"test data was changed\0A\00", align 1
@__start_rodata = common dso_local global i64 0, align 8
@__end_rodata = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"start of .rodata is not page size aligned\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"end of .rodata is not page size aligned\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"all tests were successful\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rodata_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @rodata_test_data, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %42

8:                                                ; preds = %0
  %9 = bitcast i32* %3 to i8*
  %10 = call i32 @probe_kernel_write(i8* bitcast (i32* @rodata_test_data to i8*), i8* %9, i32 4)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %42

14:                                               ; preds = %8
  %15 = load i32, i32* @rodata_test_data, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %42

20:                                               ; preds = %14
  %21 = load i64, i64* @__start_rodata, align 8
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* @__end_rodata, align 8
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = and i64 %23, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %42

31:                                               ; preds = %20
  %32 = load i64, i64* %2, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = and i64 %32, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %42

40:                                               ; preds = %31
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %38, %29, %18, %12, %6
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @probe_kernel_write(i8*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
