; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_populate_skb.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_populate_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { %struct.TYPE_3__*, i8*, i32, i32, i32, i32, i32, i32, i8* }

@MAX_DATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@SKB_TYPE = common dso_local global i32 0, align 4
@SKB_MARK = common dso_local global i32 0, align 4
@SKB_HASH = common dso_local global i32 0, align 4
@SKB_QUEUE_MAP = common dso_local global i32 0, align 4
@SKB_VLAN_TCI = common dso_local global i32 0, align 4
@SKB_VLAN_PRESENT = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@init_net = common dso_local global i32 0, align 4
@SKB_DEV_IFINDEX = common dso_local global i32 0, align 4
@SKB_DEV_TYPE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i8*, i32)* @populate_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @populate_skb(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MAX_DATA, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %70

11:                                               ; preds = %2
  %12 = load i32, i32* @MAX_DATA, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sk_buff* @alloc_skb(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %70

18:                                               ; preds = %11
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @__skb_put_data(%struct.sk_buff* %19, i8* %20, i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @skb_reset_mac_header(%struct.sk_buff* %23)
  %25 = load i32, i32* @ETH_P_IP, align 4
  %26 = call i8* @htons(i32 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 8
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @SKB_TYPE, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @SKB_MARK, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @SKB_HASH, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @SKB_QUEUE_MAP, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @SKB_VLAN_TCI, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @SKB_VLAN_PRESENT, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @ETH_P_IP, align 4
  %48 = call i8* @htons(i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = call i32 @dev_net_set(%struct.TYPE_3__* @dev, i32* @init_net)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  store %struct.TYPE_3__* @dev, %struct.TYPE_3__** %53, align 8
  %54 = load i32, i32* @SKB_DEV_IFINDEX, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @SKB_DEV_TYPE, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @ETH_HLEN, align 4
  %67 = call i32 @min(i32 %65, i32 %66)
  %68 = call i32 @skb_set_network_header(%struct.sk_buff* %64, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %3, align 8
  br label %70

70:                                               ; preds = %18, %17, %10
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %71
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @__skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @dev_net_set(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
