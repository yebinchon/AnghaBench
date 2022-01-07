; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_socket_cookie_prog.c_update_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_socket_cookie_prog.c_update_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_ops = type { i64, i64, i32, i32 }
%struct.bpf_sock = type { i32 }
%struct.socket_cookie = type { i64, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@BPF_SOCK_OPS_TCP_CONNECT_CB = common dso_local global i64 0, align 8
@socket_cookies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_cookie(%struct.bpf_sock_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_ops*, align 8
  %4 = alloca %struct.bpf_sock*, align 8
  %5 = alloca %struct.socket_cookie*, align 8
  store %struct.bpf_sock_ops* %0, %struct.bpf_sock_ops** %3, align 8
  %6 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %7 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET6, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %14 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BPF_SOCK_OPS_TCP_CONNECT_CB, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %52

19:                                               ; preds = %12
  %20 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %52

25:                                               ; preds = %19
  %26 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %27 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.socket_cookie* @bpf_sk_storage_get(i32* @socket_cookies, i32 %28, i32 0, i32 0)
  store %struct.socket_cookie* %29, %struct.socket_cookie** %5, align 8
  %30 = load %struct.socket_cookie*, %struct.socket_cookie** %5, align 8
  %31 = icmp ne %struct.socket_cookie* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %52

33:                                               ; preds = %25
  %34 = load %struct.socket_cookie*, %struct.socket_cookie** %5, align 8
  %35 = getelementptr inbounds %struct.socket_cookie, %struct.socket_cookie* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %38 = call i64 @bpf_get_socket_cookie(%struct.bpf_sock_ops* %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %52

41:                                               ; preds = %33
  %42 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %43 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 8
  %46 = load %struct.socket_cookie*, %struct.socket_cookie** %5, align 8
  %47 = getelementptr inbounds %struct.socket_cookie, %struct.socket_cookie* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %45, %48
  %50 = load %struct.socket_cookie*, %struct.socket_cookie** %5, align 8
  %51 = getelementptr inbounds %struct.socket_cookie, %struct.socket_cookie* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %41, %40, %32, %24, %18, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.socket_cookie* @bpf_sk_storage_get(i32*, i32, i32, i32) #1

declare dso_local i64 @bpf_get_socket_cookie(%struct.bpf_sock_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
