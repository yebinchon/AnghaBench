; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_start_server.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to create server socket\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to bind server socket\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to listen on server socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr_storage*, i32)* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_server(i32 %0, %struct.sockaddr_storage* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %9 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %41

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %20 = bitcast %struct.sockaddr_storage* %19 to %struct.sockaddr*
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @bind(i32 %18, %struct.sockaddr* %20, i32 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %38

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SOCK_STREAM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @listen(i32 %31, i32 128)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %38

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %26
  br label %41

38:                                               ; preds = %34, %24
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @close(i32 %39)
  store i32 -1, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %37, %15
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
