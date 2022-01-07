; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_run_bind_test_case.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_run_bind_test_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_addr_test = type { i32 }
%struct.sockaddr_storage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_addr_test*)* @run_bind_test_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_bind_test_case(%struct.sock_addr_test* %0) #0 {
  %2 = alloca %struct.sock_addr_test*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock_addr_test* %0, %struct.sock_addr_test** %2, align 8
  store i32 4, i32* %3, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.sock_addr_test*, %struct.sock_addr_test** %2, align 8
  %10 = call i64 @init_addrs(%struct.sock_addr_test* %9, %struct.sockaddr_storage* %4, %struct.sockaddr_storage* %5, i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.sock_addr_test*, %struct.sock_addr_test** %2, align 8
  %15 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @start_server(i32 %16, %struct.sockaddr_storage* %4, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %37

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @cmp_local_addr(i32 %23, %struct.sockaddr_storage* %5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %37

27:                                               ; preds = %22
  %28 = load %struct.sock_addr_test*, %struct.sock_addr_test** %2, align 8
  %29 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @connect_to_server(i32 %30, %struct.sockaddr_storage* %5, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %37

36:                                               ; preds = %27
  br label %38

37:                                               ; preds = %35, %26, %21, %12
  store i32 -1, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i64 @init_addrs(%struct.sock_addr_test*, %struct.sockaddr_storage*, %struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @start_server(i32, %struct.sockaddr_storage*, i32) #1

declare dso_local i64 @cmp_local_addr(i32, %struct.sockaddr_storage*) #1

declare dso_local i32 @connect_to_server(i32, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
