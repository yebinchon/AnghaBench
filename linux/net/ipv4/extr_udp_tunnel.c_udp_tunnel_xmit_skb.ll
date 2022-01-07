; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp_tunnel.c_udp_tunnel_xmit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp_tunnel.c_udp_tunnel_xmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.udphdr = type { i32, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_tunnel_xmit_skb(%struct.rtable* %0, %struct.sock* %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i8* %8, i8* %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.rtable*, align 8
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.udphdr*, align 8
  store %struct.rtable* %0, %struct.rtable** %13, align 8
  store %struct.sock* %1, %struct.sock** %14, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %27 = call i32 @__skb_push(%struct.sk_buff* %26, i32 24)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %29 = call i32 @skb_reset_transport_header(%struct.sk_buff* %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %31 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %30)
  store %struct.udphdr* %31, %struct.udphdr** %25, align 8
  %32 = load i8*, i8** %22, align 8
  %33 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %34 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %21, align 8
  %36 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %37 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %43 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %45 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @memset(i32* %46, i32 0, i32 4)
  %48 = load i32, i32* %24, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @udp_set_csum(i32 %48, %struct.sk_buff* %49, i32 %50, i32 %51, i32 %54)
  %56 = load %struct.sock*, %struct.sock** %14, align 8
  %57 = load %struct.rtable*, %struct.rtable** %13, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* @IPPROTO_UDP, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %19, align 4
  %64 = load i8*, i8** %20, align 8
  %65 = load i32, i32* %23, align 4
  %66 = call i32 @iptunnel_xmit(%struct.sock* %56, %struct.rtable* %57, %struct.sk_buff* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i8* %64, i32 %65)
  ret void
}

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @udp_set_csum(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @iptunnel_xmit(%struct.sock*, %struct.rtable*, %struct.sk_buff*, i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
