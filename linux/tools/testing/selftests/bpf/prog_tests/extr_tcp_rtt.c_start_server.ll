; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tcp_rtt.c_start_server.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tcp_rtt.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to create server socket\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to bind socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* @INADDR_LOOPBACK, align 4
  %7 = call i32 @htonl(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  %9 = load i32, i32* @AF_INET, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @AF_INET, align 4
  %11 = load i32, i32* @SOCK_STREAM, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %28

17:                                               ; preds = %0
  %18 = load i32, i32* %3, align 4
  %19 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %20 = call i64 @bind(i32 %18, %struct.sockaddr* %19, i32 8)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call i32 @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @close(i32 %24)
  store i32 -1, i32* %1, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %26, %22, %15
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
