; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/mqueue/extr_mq_perf_tests.c_sig_action_SIGUSR1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/mqueue/extr_mq_perf_tests.c_sig_action_SIGUSR1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main_thread = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Caught signal %d in SIGUSR1 handler, exiting\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\0A\0AReturned from shutdown?!?!\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sig_action_SIGUSR1(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = call i64 (...) @pthread_self()
  %8 = load i64, i64* @main_thread, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 @pthread_exit(i32 0)
  br label %20

12:                                               ; preds = %3
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @shutdown(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @exit(i32 0) #3
  unreachable

20:                                               ; preds = %10
  ret void
}

declare dso_local i64 @pthread_self(...) #1

declare dso_local i32 @pthread_exit(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @shutdown(i32, i8*, i32) #1

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
