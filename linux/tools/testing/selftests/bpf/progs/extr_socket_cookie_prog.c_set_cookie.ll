; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_socket_cookie_prog.c_set_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_socket_cookie_prog.c_set_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_addr = type { i64, i64, i32 }
%struct.socket_cookie = type { i32, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@socket_cookies = common dso_local global i32 0, align 4
@BPF_SK_STORAGE_GET_F_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_cookie(%struct.bpf_sock_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_addr*, align 8
  %4 = alloca %struct.socket_cookie*, align 8
  store %struct.bpf_sock_addr* %0, %struct.bpf_sock_addr** %3, align 8
  %5 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %6 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AF_INET6, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %12 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AF_INET6, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  store i32 1, i32* %2, align 4
  br label %33

17:                                               ; preds = %10
  %18 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BPF_SK_STORAGE_GET_F_CREATE, align 4
  %22 = call %struct.socket_cookie* @bpf_sk_storage_get(i32* @socket_cookies, i32 %20, i32 0, i32 %21)
  store %struct.socket_cookie* %22, %struct.socket_cookie** %4, align 8
  %23 = load %struct.socket_cookie*, %struct.socket_cookie** %4, align 8
  %24 = icmp ne %struct.socket_cookie* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.socket_cookie*, %struct.socket_cookie** %4, align 8
  %28 = getelementptr inbounds %struct.socket_cookie, %struct.socket_cookie* %27, i32 0, i32 0
  store i32 255, i32* %28, align 4
  %29 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %30 = call i32 @bpf_get_socket_cookie(%struct.bpf_sock_addr* %29)
  %31 = load %struct.socket_cookie*, %struct.socket_cookie** %4, align 8
  %32 = getelementptr inbounds %struct.socket_cookie, %struct.socket_cookie* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %25, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.socket_cookie* @bpf_sk_storage_get(i32*, i32, i32, i32) #1

declare dso_local i32 @bpf_get_socket_cookie(%struct.bpf_sock_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
