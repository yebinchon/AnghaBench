; ModuleID = '/home/carl/AnghaBench/linux/samples/trace_events/extr_trace-events-sample.c_simple_thread_func.c'
source_filename = "/home/carl/AnghaBench/linux/samples/trace_events/extr_trace-events-sample.c_simple_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@random_strings = common dso_local global i32* null, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"HELLO\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Some times print\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"prints other times\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"I have to be different\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @simple_thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simple_thread_func(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [6 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = srem i32 %6, 5
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %9 = call i32 @set_current_state(i32 %8)
  %10 = load i32, i32* @HZ, align 4
  %11 = call i32 @schedule_timeout(i32 %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %22, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 %20
  store i32 %18, i32* %21, align 4
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %12

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 %27
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %2, align 4
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %31 = load i32*, i32** @random_strings, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @trace_foo_bar(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29, i32* %30, i32 %35, i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @trace_foo_with_template_simple(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @trace_foo_bar_with_cond(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @trace_foo_with_template_cond(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @trace_foo_with_template_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  ret void
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @trace_foo_bar(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @trace_foo_with_template_simple(i8*, i32) #1

declare dso_local i32 @trace_foo_bar_with_cond(i8*, i32) #1

declare dso_local i32 @trace_foo_with_template_cond(i8*, i32) #1

declare dso_local i32 @trace_foo_with_template_print(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
