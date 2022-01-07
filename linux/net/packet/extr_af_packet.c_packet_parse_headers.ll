; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_parse_headers.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_parse_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.socket = type { i64 }

@ETH_P_ALL = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.socket*)* @packet_parse_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_parse_headers(%struct.sk_buff* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @ETH_P_ALL, align 4
  %14 = call i64 @htons(i32 %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %9, %2
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOCK_RAW, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call i32 @skb_reset_mac_header(%struct.sk_buff* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call i64 @dev_parse_header_protocol(%struct.sk_buff* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %22, %16, %9
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i32 @skb_probe_transport_header(%struct.sk_buff* %30)
  ret void
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @dev_parse_header_protocol(%struct.sk_buff*) #1

declare dso_local i32 @skb_probe_transport_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
