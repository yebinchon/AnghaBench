; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_mc_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_mc_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i32, i32 }
%struct.net_device = type { i32 }
%struct.rtable = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@ip_mc_finish_output = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@ip_finish_output = common dso_local global i32 0, align 4
@IPSKB_REROUTED = common dso_local global i32 0, align 4
@IPSKB_FORWARDED = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_mc_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %12)
  store %struct.rtable* %13, %struct.rtable** %8, align 8
  %14 = load %struct.rtable*, %struct.rtable** %8, align 8
  %15 = getelementptr inbounds %struct.rtable, %struct.rtable* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load %struct.net*, %struct.net** %5, align 8
  %19 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IP_UPD_PO_STATS(%struct.net* %18, i32 %19, i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  store %struct.net_device* %24, %struct.net_device** %26, align 8
  %27 = load i32, i32* @ETH_P_IP, align 4
  %28 = call i32 @htons(i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.rtable*, %struct.rtable** %8, align 8
  %32 = getelementptr inbounds %struct.rtable, %struct.rtable* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RTCF_MULTICAST, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %3
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = call i64 @sk_mc_loop(%struct.sock* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %42, i32 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %10, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i32, i32* @NFPROTO_IPV4, align 4
  %49 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %50 = load %struct.net*, %struct.net** %5, align 8
  %51 = load %struct.sock*, %struct.sock** %6, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load %struct.net_device*, %struct.net_device** %54, align 8
  %56 = load i32, i32* @ip_mc_finish_output, align 4
  %57 = call i32 @NF_HOOK(i32 %48, i32 %49, %struct.net* %50, %struct.sock* %51, %struct.sk_buff* %52, i32* null, %struct.net_device* %55, i32 %56)
  br label %58

58:                                               ; preds = %47, %41
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = call i32 @kfree_skb(%struct.sk_buff* %66)
  store i32 0, i32* %4, align 4
  br label %114

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %3
  %70 = load %struct.rtable*, %struct.rtable** %8, align 8
  %71 = getelementptr inbounds %struct.rtable, %struct.rtable* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RTCF_BROADCAST, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %77, i32 %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %11, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %81 = icmp ne %struct.sk_buff* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load i32, i32* @NFPROTO_IPV4, align 4
  %84 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %85 = load %struct.net*, %struct.net** %5, align 8
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  %91 = load i32, i32* @ip_mc_finish_output, align 4
  %92 = call i32 @NF_HOOK(i32 %83, i32 %84, %struct.net* %85, %struct.sock* %86, %struct.sk_buff* %87, i32* null, %struct.net_device* %90, i32 %91)
  br label %93

93:                                               ; preds = %82, %76
  br label %94

94:                                               ; preds = %93, %69
  %95 = load i32, i32* @NFPROTO_IPV4, align 4
  %96 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %97 = load %struct.net*, %struct.net** %5, align 8
  %98 = load %struct.sock*, %struct.sock** %6, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load %struct.net_device*, %struct.net_device** %101, align 8
  %103 = load i32, i32* @ip_finish_output, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = call %struct.TYPE_6__* @IPCB(%struct.sk_buff* %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IPSKB_REROUTED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @NF_HOOK_COND(i32 %95, i32 %96, %struct.net* %97, %struct.sock* %98, %struct.sk_buff* %99, i32* null, %struct.net_device* %102, i32 %103, i32 %112)
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %94, %65
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @IP_UPD_PO_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @sk_mc_loop(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, %struct.net_device*, i32) #1

declare dso_local %struct.TYPE_5__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK_COND(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, %struct.net_device*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @IPCB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
