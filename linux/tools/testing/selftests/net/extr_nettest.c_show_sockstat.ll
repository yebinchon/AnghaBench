; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_show_sockstat.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_show_sockstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_args = type { i32, i64, i32, i64 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@server_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"server local:\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"client local:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"getsockname failed\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"server peer:\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"client peer:\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"getpeername failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sock_args*)* @show_sockstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_sockstat(i32 %0, %struct.sock_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock_args*, align 8
  %5 = alloca %struct.sockaddr_in6, align 4
  %6 = alloca %struct.sockaddr_in6, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sock_args* %1, %struct.sock_args** %4, align 8
  store i32 4, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* @server_mode, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  store i8* %14, i8** %9, align 8
  %15 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  store %struct.sockaddr* %15, %struct.sockaddr** %8, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %18 = call i64 @getsockname(i32 %16, %struct.sockaddr* %17, i32* %7)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %23 = call i32 @log_address(i8* %21, %struct.sockaddr* %22)
  %24 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %25 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %30 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %31 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %30, i32 0, i32 2
  %32 = call i32 @expected_addr_match(%struct.sockaddr* %29, i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %28, %20
  br label %36

34:                                               ; preds = %2
  %35 = call i32 @log_err_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %33
  %37 = bitcast %struct.sockaddr_in6* %6 to %struct.sockaddr*
  store %struct.sockaddr* %37, %struct.sockaddr** %8, align 8
  %38 = load i64, i64* @server_mode, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)
  store i8* %41, i8** %9, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %44 = call i64 @getpeername(i32 %42, %struct.sockaddr* %43, i32* %7)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %36
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %49 = call i32 @log_address(i8* %47, %struct.sockaddr* %48)
  %50 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %51 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %56 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %57 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %56, i32 0, i32 0
  %58 = call i32 @expected_addr_match(%struct.sockaddr* %55, i32* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %54, %46
  br label %64

62:                                               ; preds = %36
  %63 = call i32 @log_err_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %61
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @log_address(i8*, %struct.sockaddr*) #1

declare dso_local i32 @expected_addr_match(%struct.sockaddr*, i32*, i8*) #1

declare dso_local i32 @log_err_errno(i8*) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
