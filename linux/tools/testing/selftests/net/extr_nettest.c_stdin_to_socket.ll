; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_stdin_to_socket.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_stdin_to_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"failed to send buf\00", align 1
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@try_broadcast = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to send msg to peer\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Sent message:\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"    %.24s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @stdin_to_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stdin_to_socket(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %14 = load i32, i32* @stdin, align 4
  %15 = call i32* @fgets(i8* %13, i32 1024, i32 %14)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %68

18:                                               ; preds = %4
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SOCK_STREAM, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @write(i32 %25, i8* %26, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @log_err_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %68

32:                                               ; preds = %24
  br label %60

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %37 = load i32, i32* %11, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @sendto(i32 %35, i8* %36, i32 %37, i32 0, i8* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %34
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EACCES, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i64, i64* @try_broadcast, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  store i64 0, i64* @try_broadcast, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @set_broadcast(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %34

55:                                               ; preds = %50
  %56 = load i64, i64* @EACCES, align 8
  store i64 %56, i64* @errno, align 8
  br label %57

57:                                               ; preds = %55, %47, %43
  %58 = call i32 @log_err_errno(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %68

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59, %32
  %61 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, 24
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %67 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %62, i8* %66)
  store i32 1, i32* %5, align 4
  br label %68

68:                                               ; preds = %60, %57, %30, %17
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @log_err_errno(i8*) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @set_broadcast(i32) #1

declare dso_local i32 @log_msg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
