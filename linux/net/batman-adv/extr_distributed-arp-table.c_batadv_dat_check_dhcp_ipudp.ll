; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_check_dhcp_ipudp.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_check_dhcp_ipudp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.udphdr = type { i32, i32, i64, i64, i32 }
%struct.iphdr = type { i32, i32, i64, i64, i32 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*)* @batadv_dat_check_dhcp_ipudp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_dat_check_dhcp_ipudp(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.udphdr*, align 8
  %8 = alloca %struct.udphdr, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.iphdr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @skb_network_offset(%struct.sk_buff* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = bitcast %struct.iphdr* %10 to %struct.udphdr*
  %16 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %13, i32 %14, i32 32, %struct.udphdr* %15)
  %17 = bitcast %struct.udphdr* %16 to %struct.iphdr*
  store %struct.iphdr* %17, %struct.iphdr** %9, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %19 = icmp ne %struct.iphdr* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 32
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %20, %2
  store i32 0, i32* %3, align 4
  br label %67

33:                                               ; preds = %25
  %34 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IPPROTO_UDP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %67

40:                                               ; preds = %33
  %41 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 4
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @skb_set_transport_header(%struct.sk_buff* %47, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %50, i32 %51, i32 32, %struct.udphdr* %8)
  store %struct.udphdr* %52, %struct.udphdr** %7, align 8
  %53 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %54 = icmp ne %struct.udphdr* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %40
  %56 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %57 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @htons(i32 67)
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %40
  store i32 0, i32* %3, align 4
  br label %67

62:                                               ; preds = %55
  %63 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 4
  %65 = call i32 @get_unaligned(i32* %64)
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %61, %39, %32
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.udphdr*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
