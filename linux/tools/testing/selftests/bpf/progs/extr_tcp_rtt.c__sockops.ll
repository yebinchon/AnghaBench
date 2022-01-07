; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_tcp_rtt.c__sockops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_tcp_rtt.c__sockops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_ops = type { %struct.bpf_sock*, i64 }
%struct.bpf_sock = type { i32 }
%struct.tcp_rtt_storage = type { i32, i32, i32, i32, i32 }
%struct.bpf_tcp_sock = type { i32, i32, i32, i32 }

@socket_storage_map = common dso_local global i32 0, align 4
@BPF_SK_STORAGE_GET_F_CREATE = common dso_local global i32 0, align 4
@BPF_SOCK_OPS_TCP_CONNECT_CB = common dso_local global i32 0, align 4
@BPF_SOCK_OPS_RTT_CB_FLAG = common dso_local global i32 0, align 4
@BPF_SOCK_OPS_RTT_CB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_sockops(%struct.bpf_sock_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_ops*, align 8
  %4 = alloca %struct.tcp_rtt_storage*, align 8
  %5 = alloca %struct.bpf_tcp_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_sock*, align 8
  store %struct.bpf_sock_ops* %0, %struct.bpf_sock_ops** %3, align 8
  %8 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %9 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %12, i32 0, i32 0
  %14 = load %struct.bpf_sock*, %struct.bpf_sock** %13, align 8
  store %struct.bpf_sock* %14, %struct.bpf_sock** %7, align 8
  %15 = load %struct.bpf_sock*, %struct.bpf_sock** %7, align 8
  %16 = icmp ne %struct.bpf_sock* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %69

18:                                               ; preds = %1
  %19 = load %struct.bpf_sock*, %struct.bpf_sock** %7, align 8
  %20 = load i32, i32* @BPF_SK_STORAGE_GET_F_CREATE, align 4
  %21 = call %struct.tcp_rtt_storage* @bpf_sk_storage_get(i32* @socket_storage_map, %struct.bpf_sock* %19, i32 0, i32 %20)
  store %struct.tcp_rtt_storage* %21, %struct.tcp_rtt_storage** %4, align 8
  %22 = load %struct.tcp_rtt_storage*, %struct.tcp_rtt_storage** %4, align 8
  %23 = icmp ne %struct.tcp_rtt_storage* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %69

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @BPF_SOCK_OPS_TCP_CONNECT_CB, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %31 = load i32, i32* @BPF_SOCK_OPS_RTT_CB_FLAG, align 4
  %32 = call i32 @bpf_sock_ops_cb_flags_set(%struct.bpf_sock_ops* %30, i32 %31)
  store i32 1, i32* %2, align 4
  br label %69

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @BPF_SOCK_OPS_RTT_CB, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %69

38:                                               ; preds = %33
  %39 = load %struct.bpf_sock*, %struct.bpf_sock** %7, align 8
  %40 = call %struct.bpf_tcp_sock* @bpf_tcp_sock(%struct.bpf_sock* %39)
  store %struct.bpf_tcp_sock* %40, %struct.bpf_tcp_sock** %5, align 8
  %41 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %5, align 8
  %42 = icmp ne %struct.bpf_tcp_sock* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %69

44:                                               ; preds = %38
  %45 = load %struct.tcp_rtt_storage*, %struct.tcp_rtt_storage** %4, align 8
  %46 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %5, align 8
  %50 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tcp_rtt_storage*, %struct.tcp_rtt_storage** %4, align 8
  %53 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %5, align 8
  %55 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tcp_rtt_storage*, %struct.tcp_rtt_storage** %4, align 8
  %58 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %5, align 8
  %60 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tcp_rtt_storage*, %struct.tcp_rtt_storage** %4, align 8
  %63 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %5, align 8
  %65 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.tcp_rtt_storage*, %struct.tcp_rtt_storage** %4, align 8
  %68 = getelementptr inbounds %struct.tcp_rtt_storage, %struct.tcp_rtt_storage* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %44, %43, %37, %29, %24, %17
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.tcp_rtt_storage* @bpf_sk_storage_get(i32*, %struct.bpf_sock*, i32, i32) #1

declare dso_local i32 @bpf_sock_ops_cb_flags_set(%struct.bpf_sock_ops*, i32) #1

declare dso_local %struct.bpf_tcp_sock* @bpf_tcp_sock(%struct.bpf_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
