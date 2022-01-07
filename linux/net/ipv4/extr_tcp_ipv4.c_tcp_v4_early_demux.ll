; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_early_demux.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_early_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32, %struct.sock*, i32 }
%struct.sock = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_2__ = type { i64 }

@PACKET_HOST = common dso_local global i64 0, align 8
@tcp_hashinfo = common dso_local global i32 0, align 4
@sock_edemux = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_v4_early_demux(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PACKET_HOST, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i64 @skb_transport_offset(%struct.sk_buff* %16)
  %18 = add i64 %17, 12
  %19 = call i32 @pskb_may_pull(%struct.sk_buff* %15, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %98

22:                                               ; preds = %14
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %23)
  store %struct.iphdr* %24, %struct.iphdr** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %25)
  store %struct.tcphdr* %26, %struct.tcphdr** %5, align 8
  %27 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %28 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %98

33:                                               ; preds = %22
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_net(i32 %36)
  %38 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call i32 @inet_sdif(%struct.sk_buff* %54)
  %56 = call %struct.sock* @__inet_lookup_established(i32 %37, i32* @tcp_hashinfo, i32 %40, i32 %43, i32 %46, i32 %50, i64 %53, i32 %55)
  store %struct.sock* %56, %struct.sock** %6, align 8
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = icmp ne %struct.sock* %57, null
  br i1 %58, label %59, label %97

59:                                               ; preds = %33
  %60 = load %struct.sock*, %struct.sock** %6, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 3
  store %struct.sock* %60, %struct.sock** %62, align 8
  %63 = load i32, i32* @sock_edemux, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sock*, %struct.sock** %6, align 8
  %67 = call i64 @sk_fullsock(%struct.sock* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %59
  %70 = load %struct.sock*, %struct.sock** %6, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.dst_entry* @READ_ONCE(i32 %72)
  store %struct.dst_entry* %73, %struct.dst_entry** %7, align 8
  %74 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %75 = icmp ne %struct.dst_entry* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %78 = call %struct.dst_entry* @dst_check(%struct.dst_entry* %77, i32 0)
  store %struct.dst_entry* %78, %struct.dst_entry** %7, align 8
  br label %79

79:                                               ; preds = %76, %69
  %80 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %81 = icmp ne %struct.dst_entry* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %93 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %94 = call i32 @skb_dst_set_noref(%struct.sk_buff* %92, %struct.dst_entry* %93)
  br label %95

95:                                               ; preds = %91, %82, %79
  br label %96

96:                                               ; preds = %95, %59
  br label %97

97:                                               ; preds = %96, %33
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %32, %21, %13
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sock* @__inet_lookup_established(i32, i32*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @inet_sdif(%struct.sk_buff*) #1

declare dso_local i64 @sk_fullsock(%struct.sock*) #1

declare dso_local %struct.dst_entry* @READ_ONCE(i32) #1

declare dso_local %struct.dst_entry* @dst_check(%struct.dst_entry*, i32) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @skb_dst_set_noref(%struct.sk_buff*, %struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
