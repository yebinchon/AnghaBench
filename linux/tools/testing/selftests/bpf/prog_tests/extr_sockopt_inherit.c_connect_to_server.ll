; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_inherit.c_connect_to_server.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_inherit.c_connect_to_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to create client socket\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get server addr\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Fail to connect to server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @connect_to_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_to_server(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 4, i32* %5, align 4
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %17 = call i64 @getsockname(i32 %15, %struct.sockaddr* %16, i32* %5)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %31

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @connect(i32 %22, %struct.sockaddr* %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %34

31:                                               ; preds = %27, %19
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @close(i32 %32)
  store i32 -1, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %29, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
