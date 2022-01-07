; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_mtu_reduced.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_mtu_reduced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.inet_sock = type { i64 }
%struct.dst_entry = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@TCPF_LISTEN = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IP_PMTUDISC_DONT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_v4_mtu_reduced(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_sock*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.inet_sock* @inet_sk(%struct.sock* %6)
  store %struct.inet_sock* %7, %struct.inet_sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @TCPF_LISTEN, align 4
  %13 = load i32, i32* @TCPF_CLOSE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %68

18:                                               ; preds = %1
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.dst_entry* @inet_csk_update_pmtu(%struct.sock* %23, i64 %24)
  store %struct.dst_entry* %25, %struct.dst_entry** %4, align 8
  %26 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %27 = icmp ne %struct.dst_entry* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %68

29:                                               ; preds = %18
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %32 = call i64 @dst_mtu(%struct.dst_entry* %31)
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %37 = call i64 @ip_dont_fragment(%struct.sock* %35, %struct.dst_entry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @EMSGSIZE, align 4
  %41 = load %struct.sock*, %struct.sock** %2, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %34, %29
  %44 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %45 = call i64 @dst_mtu(%struct.dst_entry* %44)
  store i64 %45, i64* %5, align 8
  %46 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %47 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IP_PMTUDISC_DONT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = call i64 @ip_sk_accept_pmtu(%struct.sock* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load %struct.sock*, %struct.sock** %2, align 8
  %57 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.sock*, %struct.sock** %2, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @tcp_sync_mss(%struct.sock* %63, i64 %64)
  %66 = load %struct.sock*, %struct.sock** %2, align 8
  %67 = call i32 @tcp_simple_retransmit(%struct.sock* %66)
  br label %68

68:                                               ; preds = %17, %28, %62, %55, %51, %43
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @inet_csk_update_pmtu(%struct.sock*, i64) #1

declare dso_local i64 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i64 @ip_dont_fragment(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i64 @ip_sk_accept_pmtu(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i64) #1

declare dso_local i32 @tcp_simple_retransmit(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
