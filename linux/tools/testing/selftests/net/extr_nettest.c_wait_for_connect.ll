; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_wait_for_connect.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_wait_for_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64 }

@prog_timeout = common dso_local global i64 0, align 8
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"connect timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"select failed\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"getsockopt(SO_ERROR) failed\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"connect failed: %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wait_for_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_connect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %11 = load i64, i64* @prog_timeout, align 8
  store i64 %11, i64* %10, align 8
  store %struct.timeval* null, %struct.timeval** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %12 = call i32 @FD_ZERO(i32* %6)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @FD_SET(i32 %13, i32* %6)
  %15 = load i64, i64* @prog_timeout, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.timeval* %4, %struct.timeval** %5, align 8
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i32, i32* @FD_SETSIZE, align 4
  %20 = load %struct.timeval*, %struct.timeval** %5, align 8
  %21 = call i32 @select(i32 %19, i32* null, i32* %6, i32* null, %struct.timeval* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %2, align 4
  br label %49

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @log_err_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %2, align 4
  br label %49

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SOL_SOCKET, align 4
  %35 = load i32, i32* @SO_ERROR, align 4
  %36 = call i64 @getsockopt(i32 %33, i32 %34, i32 %35, i32* %7, i32* %8)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @log_err_errno(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -4, i32* %2, align 4
  br label %49

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %46)
  store i32 -1, i32* %2, align 4
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %43, %38, %29, %24
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @log_error(i8*, ...) #1

declare dso_local i32 @log_err_errno(i8*) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
