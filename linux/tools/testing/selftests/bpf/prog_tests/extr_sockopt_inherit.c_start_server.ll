; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_inherit.c_start_server.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_inherit.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to create server socket\00", align 1
@CUSTOM_INHERIT1 = common dso_local global i32 0, align 4
@CUSTOM_LISTENER = common dso_local global i32 0, align 4
@SOL_CUSTOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to call setsockopt(%d)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to bind socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @INADDR_LOOPBACK, align 4
  %10 = call i32 @htonl(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  %12 = load i32, i32* @AF_INET, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @AF_INET, align 4
  %14 = load i32, i32* @SOCK_STREAM, align 4
  %15 = call i32 @socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %53

20:                                               ; preds = %0
  %21 = load i32, i32* @CUSTOM_INHERIT1, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %39, %20
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CUSTOM_LISTENER, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  store i8 1, i8* %3, align 1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SOL_CUSTOM, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @setsockopt(i32 %27, i32 %28, i32 %29, i8* %3, i32 1)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @close(i32 %36)
  store i32 -1, i32* %1, align 4
  br label %53

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load i32, i32* %5, align 4
  %44 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %45 = call i64 @bind(i32 %43, %struct.sockaddr* %44, i32 8)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @close(i32 %49)
  store i32 -1, i32* %1, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %51, %47, %33, %18
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
