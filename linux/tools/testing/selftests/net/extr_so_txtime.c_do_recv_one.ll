; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_do_recv_one.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_do_recv_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timed_send = type { i64, i8 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"read: %dB\00", align 1
@glob_tstart = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"payload:%c delay:%ld expected:%ld (us)\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"payload mismatch. expected %c\00", align 1
@cfg_variance_us = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"exceeds variance (%d us)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.timed_send*)* @do_recv_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_recv_one(i32 %0, %struct.timed_send* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timed_send*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timed_send* %1, %struct.timed_send** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %11 = call i32 @recv(i32 %9, i8* %10, i32 2, i32 0)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = call i32 (...) @gettime_ns()
  %25 = load i32, i32* @glob_tstart, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sdiv i32 %26, 1000
  store i32 %27, i32* %5, align 4
  %28 = load %struct.timed_send*, %struct.timed_send** %4, align 8
  %29 = getelementptr inbounds %struct.timed_send, %struct.timed_send* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.timed_send*, %struct.timed_send** %4, align 8
  %34 = getelementptr inbounds %struct.timed_send, %struct.timed_send* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  br label %37

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i64 [ %35, %32 ], [ 0, %36 ]
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @stderr, align 4
  %41 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8 signext %42, i32 %43, i32 %44)
  %46 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load %struct.timed_send*, %struct.timed_send** %4, align 8
  %50 = getelementptr inbounds %struct.timed_send, %struct.timed_send* %49, i32 0, i32 1
  %51 = load i8, i8* %50, align 8
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %48, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %37
  %55 = load %struct.timed_send*, %struct.timed_send** %4, align 8
  %56 = getelementptr inbounds %struct.timed_send, %struct.timed_send* %55, i32 0, i32 1
  %57 = load i8, i8* %56, align 8
  %58 = sext i8 %57 to i32
  %59 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %37
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @labs(i32 %63)
  %65 = load i32, i32* @cfg_variance_us, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @cfg_variance_us, align 4
  %69 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %60
  ret void
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @gettime_ns(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8 signext, i32, i32) #1

declare dso_local i32 @labs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
