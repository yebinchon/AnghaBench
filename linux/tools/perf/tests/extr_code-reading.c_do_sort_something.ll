; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_code-reading.c_do_sort_something.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_code-reading.c_do_sort_something.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@comp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"qsort failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_sort_something to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sort_something() #0 {
  %1 = alloca [40960 x i32], align 16
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %17, %0
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds [40960 x i32], [40960 x i32]* %1, i64 0, i64 0
  %6 = call i32 @ARRAY_SIZE(i32* %5)
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds [40960 x i32], [40960 x i32]* %1, i64 0, i64 0
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = load i32, i32* %2, align 4
  %12 = sub nsw i32 %10, %11
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [40960 x i32], [40960 x i32]* %1, i64 0, i64 %15
  store i32 %13, i32* %16, align 4
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %3

20:                                               ; preds = %3
  %21 = getelementptr inbounds [40960 x i32], [40960 x i32]* %1, i64 0, i64 0
  %22 = getelementptr inbounds [40960 x i32], [40960 x i32]* %1, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = load i32, i32* @comp, align 4
  %25 = call i32 @qsort(i32* %21, i32 %23, i32 4, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %41, %20
  %27 = load i32, i32* %2, align 4
  %28 = getelementptr inbounds [40960 x i32], [40960 x i32]* %1, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [40960 x i32], [40960 x i32]* %1, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %26

44:                                               ; preds = %38, %26
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
