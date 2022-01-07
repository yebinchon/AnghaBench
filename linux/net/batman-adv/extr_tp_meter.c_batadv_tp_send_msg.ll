; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_tp_vars = type { i32 }
%struct.batadv_orig_node = type { i32* }
%struct.batadv_icmp_tp_packet = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@BATADV_TP_REASON_MEMORY_ERROR = common dso_local global i32 0, align 4
@BATADV_COMPAT_VERSION = common dso_local global i32 0, align 4
@BATADV_ICMP = common dso_local global i32 0, align 4
@BATADV_TTL = common dso_local global i32 0, align 4
@BATADV_TP = common dso_local global i32 0, align 4
@BATADV_TP_MSG = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@BATADV_TP_REASON_CANT_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_tp_vars*, i32*, %struct.batadv_orig_node*, i32, i64, i32*, i32, i32)* @batadv_tp_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_tp_send_msg(%struct.batadv_tp_vars* %0, i32* %1, %struct.batadv_orig_node* %2, i32 %3, i64 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.batadv_tp_vars*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.batadv_orig_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.batadv_icmp_tp_packet*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  store %struct.batadv_tp_vars* %0, %struct.batadv_tp_vars** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* @ETH_HLEN, align 8
  %25 = add i64 %23, %24
  %26 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32* null, i64 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %19, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = load i32, i32* @BATADV_TP_REASON_MEMORY_ERROR, align 4
  store i32 %34, i32* %9, align 4
  br label %104

35:                                               ; preds = %8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %37 = load i64, i64* @ETH_HLEN, align 8
  %38 = call i32 @skb_reserve(%struct.sk_buff* %36, i64 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %40 = call i8* @skb_put(%struct.sk_buff* %39, i64 56)
  %41 = bitcast i8* %40 to %struct.batadv_icmp_tp_packet*
  store %struct.batadv_icmp_tp_packet* %41, %struct.batadv_icmp_tp_packet** %18, align 8
  %42 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %18, align 8
  %43 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %12, align 8
  %46 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ether_addr_copy(i32 %44, i32* %47)
  %49 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %18, align 8
  %50 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @ether_addr_copy(i32 %51, i32* %52)
  %54 = load i32, i32* @BATADV_COMPAT_VERSION, align 4
  %55 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %18, align 8
  %56 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @BATADV_ICMP, align 4
  %58 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %18, align 8
  %59 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @BATADV_TTL, align 4
  %61 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %18, align 8
  %62 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @BATADV_TP, align 4
  %64 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %18, align 8
  %65 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %18, align 8
  %68 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @BATADV_TP_MSG, align 4
  %70 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %18, align 8
  %71 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %18, align 8
  %73 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @memcpy(i32 %74, i32* %75, i32 4)
  %77 = load i32, i32* %13, align 4
  %78 = call i8* @htonl(i32 %77)
  %79 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %18, align 8
  %80 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %17, align 4
  %82 = call i8* @htonl(i32 %81)
  %83 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %18, align 8
  %84 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* %14, align 8
  %86 = sub i64 %85, 56
  store i64 %86, i64* %22, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %88 = load i64, i64* %22, align 8
  %89 = call i8* @skb_put(%struct.sk_buff* %87, i64 %88)
  %90 = bitcast i8* %89 to i32*
  store i32* %90, i32** %21, align 8
  %91 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %10, align 8
  %92 = load i32*, i32** %21, align 8
  %93 = load i64, i64* %22, align 8
  %94 = call i32 @batadv_tp_fill_prerandom(%struct.batadv_tp_vars* %91, i32* %92, i64 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %96 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %12, align 8
  %97 = call i32 @batadv_send_skb_to_orig(%struct.sk_buff* %95, %struct.batadv_orig_node* %96, i32* null)
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %35
  store i32 0, i32* %9, align 4
  br label %104

102:                                              ; preds = %35
  %103 = load i32, i32* @BATADV_TP_REASON_CANT_SEND, align 4
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %102, %101, %33
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @batadv_tp_fill_prerandom(%struct.batadv_tp_vars*, i32*, i64) #1

declare dso_local i32 @batadv_send_skb_to_orig(%struct.sk_buff*, %struct.batadv_orig_node*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
