; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_socket_read_stream.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_socket_read_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"client closed connection.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to read message\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Incoming message:\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"    %.24s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@interactive = common dso_local global i32 0, align 4
@server_mode = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"failed to send buf\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Sent message:\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"     %.24s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @socket_read_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_read_stream(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %8 = call i32 @read(i32 %6, i8* %7, i32 1023)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %21
  store i8 0, i8* %22, align 1
  %23 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 24
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %29 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %24, i8* %28)
  %30 = load i32, i32* @interactive, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %19
  %33 = load i64, i64* @server_mode, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @write(i32 %36, i8* %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @log_err_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

43:                                               ; preds = %35
  %44 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 24
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %50 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %45, i8* %49)
  br label %51

51:                                               ; preds = %43, %32, %19
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %41, %16, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @log_msg(i8*, ...) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @log_err_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
