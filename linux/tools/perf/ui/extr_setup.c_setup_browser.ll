; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_setup.c_setup_browser.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_setup.c_setup_browser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_browser = common dso_local global i32 0, align 4
@dump_trace = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"GTK browser requested but could not find %s\0A\00", align 1
@PERF_GTK_DSO = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_browser(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @use_browser, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = call i32 @isatty(i32 1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i64, i64* @dump_trace, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %5
  store i32 0, i32* @use_browser, align 4
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = load i32, i32* @use_browser, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* @use_browser, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* @use_browser, align 4
  switch i32 %17, label %31 [
    i32 2, label %18
    i32 1, label %26
  ]

18:                                               ; preds = %16
  %19 = call i32 (...) @setup_gtk_browser()
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %37

22:                                               ; preds = %18
  %23 = load i8*, i8** @PERF_GTK_DSO, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @sleep(i32 1)
  store i32 1, i32* @use_browser, align 4
  br label %26

26:                                               ; preds = %16, %22
  %27 = call i32 (...) @ui__init()
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %37

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %16, %30
  store i32 0, i32* @use_browser, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @setup_pager()
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %29, %21
  ret void
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @setup_gtk_browser(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @ui__init(...) #1

declare dso_local i32 @setup_pager(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
