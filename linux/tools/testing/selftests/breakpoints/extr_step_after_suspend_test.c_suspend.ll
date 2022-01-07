; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_step_after_suspend_test.c_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_step_after_suspend_test.c_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { i32 }
%struct.itimerspec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Please run the test as root - Exiting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"/sys/power/state\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"open(\22/sys/power/state\22) failed %s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@CLOCK_BOOTTIME_ALARM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"timerfd_create() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"timerfd_settime() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to enter Suspend state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @suspend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigevent, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.itimerspec, align 4
  %6 = bitcast %struct.sigevent* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = bitcast %struct.itimerspec* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = call i64 (...) @getuid()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = call i32 @open(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* @CLOCK_BOOTTIME_ALARM, align 4
  %23 = call i32 @timerfd_create(i32 %22, i32 0)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %5, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 5, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @timerfd_settime(i32 %31, i32 0, %struct.itimerspec* %5, i32* null)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i32, i32* %1, align 4
  %39 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %40 = call i64 @write(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %39)
  %41 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @close(i32 %48)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @getuid(...) #2

declare dso_local i32 @ksft_exit_skip(i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @ksft_exit_fail_msg(i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @timerfd_create(i32, i32) #2

declare dso_local i32 @timerfd_settime(i32, i32, %struct.itimerspec*, i32*) #2

declare dso_local i64 @write(i32, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
