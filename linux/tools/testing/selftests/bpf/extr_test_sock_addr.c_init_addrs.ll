; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_init_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_init_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_addr_test = type { i64, i32, i32, i64, i32, i64 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_addr_test*, %struct.sockaddr_storage*, %struct.sockaddr_storage*, %struct.sockaddr_storage*)* @init_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_addrs(%struct.sock_addr_test* %0, %struct.sockaddr_storage* %1, %struct.sockaddr_storage* %2, %struct.sockaddr_storage* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock_addr_test*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca %struct.sockaddr_storage*, align 8
  %10 = alloca i32, align 4
  store %struct.sock_addr_test* %0, %struct.sock_addr_test** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %8, align 8
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %9, align 8
  store i32 4, i32* %10, align 4
  %11 = load %struct.sock_addr_test*, %struct.sock_addr_test** %6, align 8
  %12 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sock_addr_test*, %struct.sock_addr_test** %6, align 8
  %15 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sock_addr_test*, %struct.sock_addr_test** %6, align 8
  %18 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %21 = bitcast %struct.sockaddr_storage* %20 to %struct.sockaddr*
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @mk_sockaddr(i32 %13, i64 %16, i32 %19, %struct.sockaddr* %21, i32 %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %61

26:                                               ; preds = %4
  %27 = load %struct.sock_addr_test*, %struct.sock_addr_test** %6, align 8
  %28 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sock_addr_test*, %struct.sock_addr_test** %6, align 8
  %31 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sock_addr_test*, %struct.sock_addr_test** %6, align 8
  %34 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %37 = bitcast %struct.sockaddr_storage* %36 to %struct.sockaddr*
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @mk_sockaddr(i32 %29, i64 %32, i32 %35, %struct.sockaddr* %37, i32 %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %61

42:                                               ; preds = %26
  %43 = load %struct.sock_addr_test*, %struct.sock_addr_test** %6, align 8
  %44 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.sock_addr_test*, %struct.sock_addr_test** %6, align 8
  %49 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sock_addr_test*, %struct.sock_addr_test** %6, align 8
  %52 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %55 = bitcast %struct.sockaddr_storage* %54 to %struct.sockaddr*
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @mk_sockaddr(i32 %50, i64 %53, i32 0, %struct.sockaddr* %55, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %61

60:                                               ; preds = %47, %42
  store i32 0, i32* %5, align 4
  br label %62

61:                                               ; preds = %59, %41, %25
  store i32 -1, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @mk_sockaddr(i32, i64, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
