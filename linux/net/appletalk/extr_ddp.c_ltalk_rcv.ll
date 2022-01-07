; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_ltalk_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_ltalk_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.ddpehdr = type { i32, i32, i32, i64, i32, i32 }
%struct.atalk_addr = type { i32 }

@init_net = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DDP_MAXHOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @ltalk_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltalk_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ddpehdr*, align 8
  %11 = alloca %struct.atalk_addr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call i32 @dev_net(%struct.net_device* %12)
  %14 = call i32 @net_eq(i32 %13, i32* @init_net)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %90

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32* @skb_mac_header(%struct.sk_buff* %18)
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %82

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = call %struct.atalk_addr* @atalk_find_dev_addr(%struct.net_device* %24)
  store %struct.atalk_addr* %25, %struct.atalk_addr** %11, align 8
  %26 = load %struct.atalk_addr*, %struct.atalk_addr** %11, align 8
  %27 = icmp ne %struct.atalk_addr* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 1023
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %28, %23
  br label %90

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %6, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %93

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call %struct.ddpehdr* @skb_push(%struct.sk_buff* %47, i32 28)
  store %struct.ddpehdr* %48, %struct.ddpehdr** %10, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32* @skb_mac_header(%struct.sk_buff* %49)
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ddpehdr*, %struct.ddpehdr** %10, align 8
  %54 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32* @skb_mac_header(%struct.sk_buff* %55)
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ddpehdr*, %struct.ddpehdr** %10, align 8
  %60 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.atalk_addr*, %struct.atalk_addr** %11, align 8
  %62 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ddpehdr*, %struct.ddpehdr** %10, align 8
  %65 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.atalk_addr*, %struct.atalk_addr** %11, align 8
  %67 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ddpehdr*, %struct.ddpehdr** %10, align 8
  %70 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ddpehdr*, %struct.ddpehdr** %10, align 8
  %72 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DDP_MAXHOPS, align 4
  %77 = shl i32 %76, 10
  %78 = add nsw i32 %75, %77
  %79 = call i32 @htons(i32 %78)
  %80 = load %struct.ddpehdr*, %struct.ddpehdr** %10, align 8
  %81 = getelementptr inbounds %struct.ddpehdr, %struct.ddpehdr* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %46, %17
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @skb_reset_transport_header(%struct.sk_buff* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load %struct.net_device*, %struct.net_device** %7, align 8
  %87 = load %struct.packet_type*, %struct.packet_type** %8, align 8
  %88 = load %struct.net_device*, %struct.net_device** %9, align 8
  %89 = call i32 @atalk_rcv(%struct.sk_buff* %85, %struct.net_device* %86, %struct.packet_type* %87, %struct.net_device* %88)
  store i32 %89, i32* %5, align 4
  br label %93

90:                                               ; preds = %39, %16
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = call i32 @kfree_skb(%struct.sk_buff* %91)
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %82, %45
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.atalk_addr* @atalk_find_dev_addr(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local %struct.ddpehdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @atalk_rcv(%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
