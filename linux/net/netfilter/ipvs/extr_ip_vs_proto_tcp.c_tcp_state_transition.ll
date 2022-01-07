; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_tcp_state_transition.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_tcp_state_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_proto_data = type { i32 }
%struct.tcphdr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*)* @tcp_state_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_state_transition(%struct.ip_vs_conn* %0, i32 %1, %struct.sk_buff* %2, %struct.ip_vs_proto_data* %3) #0 {
  %5 = alloca %struct.ip_vs_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ip_vs_proto_data*, align 8
  %9 = alloca %struct.tcphdr, align 4
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.ip_vs_proto_data* %3, %struct.ip_vs_proto_data** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call i32 @ip_hdrlen(%struct.sk_buff* %12)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %14, i32 %15, i32 4, %struct.tcphdr* %9)
  store %struct.tcphdr* %16, %struct.tcphdr** %10, align 8
  %17 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %18 = icmp eq %struct.tcphdr* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %32

20:                                               ; preds = %4
  %21 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %22 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %8, align 8
  %25 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %28 = call i32 @set_tcp_state(%struct.ip_vs_proto_data* %24, %struct.ip_vs_conn* %25, i32 %26, %struct.tcphdr* %27)
  %29 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %30 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_bh(i32* %30)
  br label %32

32:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @set_tcp_state(%struct.ip_vs_proto_data*, %struct.ip_vs_conn*, i32, %struct.tcphdr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
