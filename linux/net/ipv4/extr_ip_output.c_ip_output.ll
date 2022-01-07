; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.TYPE_4__ = type { i32 }

@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@ip_finish_output = common dso_local global i32 0, align 4
@IPSKB_REROUTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %9 = call %struct.TYPE_3__* @skb_dst(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.net*, %struct.net** %4, align 8
  %13 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @IP_UPD_PO_STATS(%struct.net* %12, i32 %13, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  store %struct.net_device* %18, %struct.net_device** %20, align 8
  %21 = load i32, i32* @ETH_P_IP, align 4
  %22 = call i32 @htons(i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @NFPROTO_IPV4, align 4
  %26 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %27 = load %struct.net*, %struct.net** %4, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = load i32, i32* @ip_finish_output, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call %struct.TYPE_4__* @IPCB(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IPSKB_REROUTED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @NF_HOOK_COND(i32 %25, i32 %26, %struct.net* %27, %struct.sock* %28, %struct.sk_buff* %29, i32* null, %struct.net_device* %30, i32 %31, i32 %40)
  ret i32 %41
}

declare dso_local %struct.TYPE_3__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @IP_UPD_PO_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @NF_HOOK_COND(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, %struct.net_device*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @IPCB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
