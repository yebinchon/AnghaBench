; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_forward_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_forward_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i32, i64, i32 }
%struct.nf_bridge_info = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@NF_BR_FORWARD = common dso_local global i32 0, align 4
@br_forward_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @br_nf_forward_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_forward_finish(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_bridge_info*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %9)
  store %struct.nf_bridge_info* %10, %struct.nf_bridge_info** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i32 @IS_ARP(%struct.sk_buff* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %64, label %14

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load %struct.net*, %struct.net** %4, align 8
  %17 = call i32 @is_vlan_arp(%struct.sk_buff* %15, %struct.net* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %14
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @ETH_P_IP, align 4
  %24 = call i64 @htons(i32 %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.TYPE_3__* @IPCB(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %7, align 8
  %32 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %26, %19
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ETH_P_IPV6, align 4
  %38 = call i64 @htons(i32 %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call %struct.TYPE_4__* @IP6CB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %7, align 8
  %46 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %7, align 8
  %49 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %48, i32 0, i32 1
  %50 = load %struct.net_device*, %struct.net_device** %49, align 8
  store %struct.net_device* %50, %struct.net_device** %8, align 8
  %51 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %7, align 8
  %52 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i32, i32* @PACKET_OTHERHOST, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %7, align 8
  %60 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %47
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i32 @nf_bridge_update_protocol(%struct.sk_buff* %62)
  br label %70

64:                                               ; preds = %14, %3
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.net_device**
  %69 = load %struct.net_device*, %struct.net_device** %68, align 8
  store %struct.net_device* %69, %struct.net_device** %8, align 8
  br label %70

70:                                               ; preds = %64, %61
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = call i32 @nf_bridge_push_encap_header(%struct.sk_buff* %71)
  %73 = load i32, i32* @NF_BR_FORWARD, align 4
  %74 = load %struct.net*, %struct.net** %4, align 8
  %75 = load %struct.sock*, %struct.sock** %5, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load %struct.net_device*, %struct.net_device** %8, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @br_forward_finish, align 4
  %82 = call i32 @br_nf_hook_thresh(i32 %73, %struct.net* %74, %struct.sock* %75, %struct.sk_buff* %76, %struct.net_device* %77, i32 %80, i32 %81)
  ret i32 0
}

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local i32 @IS_ARP(%struct.sk_buff*) #1

declare dso_local i32 @is_vlan_arp(%struct.sk_buff*, %struct.net*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_3__* @IPCB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_update_protocol(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_push_encap_header(%struct.sk_buff*) #1

declare dso_local i32 @br_nf_hook_thresh(i32, %struct.net*, %struct.sock*, %struct.sk_buff*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
