; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/mqueue/extr_mq_open_tests.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/mqueue/extr_mq_open_tests.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shutdown.in_shutdown = internal global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"seteuid() failed\00", align 1
@queue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"mq_close() during shutdown\00", align 1
@queue_path = common dso_local global i64 0, align 8
@default_settings = common dso_local global i64 0, align 8
@saved_def_msgs = common dso_local global i64 0, align 8
@def_msgs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to restore saved_def_msgs\00", align 1
@saved_def_msgsize = common dso_local global i64 0, align 8
@def_msgsize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to restore saved_def_msgsize\00", align 1
@saved_max_msgs = common dso_local global i64 0, align 8
@max_msgs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to restore saved_max_msgs\00", align 1
@saved_max_msgsize = common dso_local global i64 0, align 8
@max_msgsize = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to restore saved_max_msgsize\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"%s at %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shutdown(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @shutdown.in_shutdown, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @shutdown.in_shutdown, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  ret void

11:                                               ; preds = %3
  %12 = call i32 @seteuid(i32 0)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, i32* @queue, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* @queue, align 4
  %21 = call i64 @mq_close(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i64, i64* @queue_path, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* @queue_path, align 8
  %31 = call i32 @mq_unlink(i64 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* @default_settings, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i64, i64* @saved_def_msgs, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @def_msgs, align 4
  %40 = load i64, i64* @saved_def_msgs, align 8
  %41 = call i32 @__set(i32 %39, i64 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i64, i64* @saved_def_msgsize, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @def_msgsize, align 4
  %47 = load i64, i64* @saved_def_msgsize, align 8
  %48 = call i32 @__set(i32 %46, i64 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i64, i64* @saved_max_msgs, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @max_msgs, align 4
  %55 = load i64, i64* @saved_max_msgs, align 8
  %56 = call i32 @__set(i32 %54, i64 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i64, i64* @saved_max_msgsize, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @max_msgsize, align 4
  %62 = load i64, i64* @saved_max_msgsize, align 8
  %63 = call i32 @__set(i32 %61, i64 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @errno, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @error(i32 %68, i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %64
  %74 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @seteuid(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @mq_close(i32) #1

declare dso_local i32 @mq_unlink(i64) #1

declare dso_local i32 @__set(i32, i64, i8*) #1

declare dso_local i32 @error(i32, i32, i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
