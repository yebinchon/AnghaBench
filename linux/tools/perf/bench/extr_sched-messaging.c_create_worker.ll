; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_sched-messaging.c_create_worker.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_sched-messaging.c_create_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thread_mode = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fork()\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pthread_attr_init:\00", align 1
@PTHREAD_STACK_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"pthread_attr_setstacksize\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"pthread_create failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8* (i8*)*)* @create_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_worker(i8* %0, i8* (i8*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8* (i8*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* (i8*)* %1, i8* (i8*)** %5, align 8
  %9 = load i32, i32* @thread_mode, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = call i32 (...) @fork()
  switch i32 %12, label %21 [
    i32 -1, label %13
    i32 0, label %16
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  %15 = call i32 @err(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %22

16:                                               ; preds = %11
  %17 = load i8* (i8*)*, i8* (i8*)** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* %17(i8* %18)
  %20 = call i32 @exit(i32 0) #3
  unreachable

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %13
  store i32 0, i32* %3, align 4
  br label %47

23:                                               ; preds = %2
  %24 = call i64 @pthread_attr_init(i32* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @err(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @PTHREAD_STACK_MIN, align 4
  %31 = call i64 @pthread_attr_setstacksize(i32* %6, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = call i32 @err(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i8* (i8*)*, i8* (i8*)** %5, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @pthread_create(i32* %7, i32* %6, i8* (i8*)* %37, i8* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = call i32 @err(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %22
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @pthread_attr_init(i32*) #1

declare dso_local i64 @pthread_attr_setstacksize(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
