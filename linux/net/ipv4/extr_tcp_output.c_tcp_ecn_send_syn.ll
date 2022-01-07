; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_ecn_send_syn.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_ecn_send_syn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i64 }
%struct.dst_entry = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RTAX_FEATURE_ECN = common dso_local global i32 0, align 4
@TCPHDR_ECE = common dso_local global i32 0, align 4
@TCPHDR_CWR = common dso_local global i32 0, align 4
@TCP_ECN_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tcp_ecn_send_syn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_ecn_send_syn(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @tcp_bpf_ca_needs_ecn(%struct.sock* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.TYPE_5__* @sock_net(%struct.sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call i64 @tcp_ca_needs_ecn(%struct.sock* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %19, %2
  %27 = phi i1 [ true, %19 ], [ true, %2 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %32)
  store %struct.dst_entry* %33, %struct.dst_entry** %8, align 8
  %34 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %35 = icmp ne %struct.dst_entry* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %38 = load i32, i32* @RTAX_FEATURE_ECN, align 4
  %39 = call i64 @dst_feature(%struct.dst_entry* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %36, %31
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load i32, i32* @TCPHDR_ECE, align 4
  %50 = load i32, i32* @TCPHDR_CWR, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = load i64, i64* @TCP_ECN_OK, align 8
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %59 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = call i64 @tcp_ca_needs_ecn(%struct.sock* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %48
  %67 = load %struct.sock*, %struct.sock** %3, align 8
  %68 = call i32 @INET_ECN_xmit(%struct.sock* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %43
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_bpf_ca_needs_ecn(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @sock_net(%struct.sock*) #1

declare dso_local i64 @tcp_ca_needs_ecn(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local i64 @dst_feature(%struct.dst_entry*, i32) #1

declare dso_local %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @INET_ECN_xmit(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
