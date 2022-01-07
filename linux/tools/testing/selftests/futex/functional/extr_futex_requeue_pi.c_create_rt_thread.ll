; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi.c_create_rt_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi.c_create_rt_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@PTHREAD_EXPLICIT_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pthread_attr_setinheritsched\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"pthread_attr_setschedpolicy\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"pthread_attr_setschedparam\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"pthread_create\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_rt_thread(i32* %0, i8* (i8*)* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8* (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sched_param, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* (i8*)* %1, i8* (i8*)** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call i32 @pthread_attr_init(i32* %14)
  %16 = call i32 @memset(%struct.sched_param* %13, i32 0, i32 4)
  %17 = load i32, i32* @PTHREAD_EXPLICIT_SCHED, align 4
  %18 = call i32 @pthread_attr_setinheritsched(i32* %14, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %6, align 4
  br label %52

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @pthread_attr_setschedpolicy(i32* %14, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %6, align 4
  br label %52

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %13, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = call i32 @pthread_attr_setschedparam(i32* %14, %struct.sched_param* %13)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i32 -1, i32* %6, align 4
  br label %52

41:                                               ; preds = %32
  %42 = load i32*, i32** %7, align 8
  %43 = load i8* (i8*)*, i8* (i8*)** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @pthread_create(i32* %42, i32* %14, i8* (i8*)* %43, i8* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %6, align 4
  br label %52

51:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %48, %38, %29, %21
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @memset(%struct.sched_param*, i32, i32) #1

declare dso_local i32 @pthread_attr_setinheritsched(i32*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @pthread_attr_setschedpolicy(i32*, i32) #1

declare dso_local i32 @pthread_attr_setschedparam(i32*, %struct.sched_param*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
