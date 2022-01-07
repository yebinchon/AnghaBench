; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_output.c_xfrm4_tunnel_check_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_output.c_xfrm4_tunnel_check_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IPSKB_XFRM_TUNNEL_SIZE = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @xfrm4_tunnel_check_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm4_tunnel_check_size(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call %struct.TYPE_4__* @IPCB(%struct.sk_buff* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IPSKB_XFRM_TUNNEL_SIZE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %78

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call %struct.TYPE_3__* @ip_hdr(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IP_DF, align 4
  %19 = call i32 @htons(i32 %18)
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %13
  br label %78

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %30 = call i32 @skb_dst(%struct.sk_buff* %29)
  %31 = call i32 @dst_mtu(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = call i64 @skb_is_gso(%struct.sk_buff* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %54, label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %43 = call i64 @skb_is_gso(%struct.sk_buff* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %51 = call i32 @ip_skb_dst_mtu(i64 %49, %struct.sk_buff* %50)
  %52 = call i32 @skb_gso_validate_network_len(%struct.sk_buff* %46, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %45, %35
  %55 = load i32, i32* @ETH_P_IP, align 4
  %56 = call i32 @htons(i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @xfrm_local_error(%struct.sk_buff* %64, i32 %65)
  br label %74

67:                                               ; preds = %54
  %68 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %69 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %70 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @htonl(i32 %71)
  %73 = call i32 @icmp_send(%struct.sk_buff* %68, i32 %69, i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %67, %63
  %75 = load i32, i32* @EMSGSIZE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %45, %41
  br label %78

78:                                               ; preds = %77, %27, %12
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_4__* @IPCB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dst_mtu(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_gso_validate_network_len(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_skb_dst_mtu(i64, %struct.sk_buff*) #1

declare dso_local i32 @xfrm_local_error(%struct.sk_buff*, i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
