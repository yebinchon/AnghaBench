; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_socket_cookie.c_start_server.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_socket_cookie.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to create server socket\00", align 1
@in6addr_loopback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to bind server socket\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to listen on server socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_server() #0 {
  %1 = alloca %struct.sockaddr_in6, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @AF_INET6, align 4
  %4 = load i32, i32* @SOCK_STREAM, align 4
  %5 = call i32 @socket(i32 %3, i32 %4, i32 0)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %33

10:                                               ; preds = %0
  %11 = call i32 @memset(%struct.sockaddr_in6* %1, i32 0, i32 16)
  %12 = load i32, i32* @AF_INET6, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %1, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @in6addr_loopback, align 4
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %1, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %1, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %2, align 4
  %18 = bitcast %struct.sockaddr_in6* %1 to %struct.sockaddr*
  %19 = call i32 @bind(i32 %17, %struct.sockaddr* %18, i32 16)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %30

23:                                               ; preds = %10
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @listen(i32 %24, i32 128)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %30

29:                                               ; preds = %23
  br label %33

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @close(i32 %31)
  store i32 -1, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %29, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
