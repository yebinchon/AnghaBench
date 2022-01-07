; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_run_connect_test_case.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_run_connect_test_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_addr_test = type { i64 }
%struct.sockaddr_storage = type { i32 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_addr_test*)* @run_connect_test_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_connect_test_case(%struct.sock_addr_test* %0) #0 {
  %2 = alloca %struct.sock_addr_test*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock_addr_test* %0, %struct.sock_addr_test** %2, align 8
  store i32 4, i32* %3, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.sock_addr_test*, %struct.sock_addr_test** %2, align 8
  %11 = call i64 @init_addrs(%struct.sock_addr_test* %10, %struct.sockaddr_storage* %5, %struct.sockaddr_storage* %6, %struct.sockaddr_storage* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.sock_addr_test*, %struct.sock_addr_test** %2, align 8
  %16 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @start_server(i64 %17, %struct.sockaddr_storage* %6, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %66

23:                                               ; preds = %14
  %24 = load %struct.sock_addr_test*, %struct.sock_addr_test** %2, align 8
  %25 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @connect_to_server(i64 %26, %struct.sockaddr_storage* %5, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %66

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @cmp_peer_addr(i32 %33, %struct.sockaddr_storage* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %66

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @cmp_local_ip(i32 %38, %struct.sockaddr_storage* %4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %66

42:                                               ; preds = %37
  %43 = load %struct.sock_addr_test*, %struct.sock_addr_test** %2, align 8
  %44 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SOCK_STREAM, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @fastconnect_to_server(%struct.sockaddr_storage* %5, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %66

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @cmp_peer_addr(i32 %55, %struct.sockaddr_storage* %6)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %66

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @cmp_local_ip(i32 %60, %struct.sockaddr_storage* %4)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %66

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %42
  br label %67

66:                                               ; preds = %63, %58, %53, %41, %36, %31, %22, %13
  store i32 -1, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @close(i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i64 @init_addrs(%struct.sock_addr_test*, %struct.sockaddr_storage*, %struct.sockaddr_storage*, %struct.sockaddr_storage*) #1

declare dso_local i32 @start_server(i64, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @connect_to_server(i64, %struct.sockaddr_storage*, i32) #1

declare dso_local i64 @cmp_peer_addr(i32, %struct.sockaddr_storage*) #1

declare dso_local i64 @cmp_local_ip(i32, %struct.sockaddr_storage*) #1

declare dso_local i32 @fastconnect_to_server(%struct.sockaddr_storage*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
