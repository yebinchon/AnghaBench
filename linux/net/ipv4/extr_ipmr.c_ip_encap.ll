; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ip_encap.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ip_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.iphdr = type { i32, i32, i32, i32, i8*, i8*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IPPROTO_IPIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.sk_buff*, i8*, i8*)* @ip_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_encap(%struct.net* %0, %struct.sk_buff* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.iphdr*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i8* @ip_hdr(%struct.sk_buff* %11)
  %13 = bitcast i8* %12 to %struct.iphdr*
  store %struct.iphdr* %13, %struct.iphdr** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 @skb_push(%struct.sk_buff* %14, i32 48)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_reset_network_header(%struct.sk_buff* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i8* @ip_hdr(%struct.sk_buff* %23)
  %25 = bitcast i8* %24 to %struct.iphdr*
  store %struct.iphdr* %25, %struct.iphdr** %9, align 8
  %26 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 0
  store i32 4, i32* %27, align 8
  %28 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %34 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @IPPROTO_IPIP, align 4
  %47 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 1
  store i32 5, i32* %50, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @htons(i32 %53)
  %55 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.net*, %struct.net** %5, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @ip_select_ident(%struct.net* %57, %struct.sk_buff* %58, i32* null)
  %60 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %61 = call i32 @ip_send_check(%struct.iphdr* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @memset(i32* %64, i32 0, i32 4)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i32 @nf_reset_ct(%struct.sk_buff* %66)
  ret void
}

declare dso_local i8* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_select_ident(%struct.net*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
