; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_get_stack_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_get_stack_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USHRT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"callchain: Incorrect stack dump size (max %ld): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @get_stack_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_stack_size(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @USHRT_MAX, align 4
  %10 = call i64 @round_down(i32 %9, i32 4)
  store i64 %10, i64* %8, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strtoul(i8* %11, i8** %6, i32 0)
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %31

18:                                               ; preds = %13
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @round_up(i64 %19, i32 4)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %18
  br label %31

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = load i64*, i64** %5, align 8
  store i64 %29, i64* %30, align 8
  store i32 0, i32* %3, align 4
  br label %35

31:                                               ; preds = %27, %17
  %32 = load i64, i64* %8, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %32, i8* %33)
  store i32 -1, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @round_down(i32, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @pr_err(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
