; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_dev_hard_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_dev_hard_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i8* }
%struct.vlan_dev_priv = type { i32, i32, %struct.net_device*, i32 }
%struct.vlan_hdr = type { i8*, i8* }

@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_P_802_3 = common dso_local global i16 0, align 2
@ETH_P_802_2 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @vlan_dev_hard_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_dev_hard_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vlan_dev_priv*, align 8
  %14 = alloca %struct.vlan_hdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i16 %2, i16* %9, align 2
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %18)
  store %struct.vlan_dev_priv* %19, %struct.vlan_dev_priv** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %13, align 8
  %21 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %77, label %26

26:                                               ; preds = %6
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load i32, i32* @VLAN_HLEN, align 4
  %29 = call %struct.vlan_hdr* @skb_push(%struct.sk_buff* %27, i32 %28)
  store %struct.vlan_hdr* %29, %struct.vlan_hdr** %14, align 8
  %30 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %13, align 8
  %31 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %16, align 4
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vlan_dev_get_egress_qos_mask(%struct.net_device* %33, i32 %36)
  %38 = load i32, i32* %16, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i8* @htons(i32 %40)
  %42 = load %struct.vlan_hdr*, %struct.vlan_hdr** %14, align 8
  %43 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i16, i16* %9, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @ETH_P_802_3, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %26
  %50 = load i16, i16* %9, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @ETH_P_802_2, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i16, i16* %9, align 2
  %57 = zext i16 %56 to i32
  %58 = call i8* @htons(i32 %57)
  %59 = load %struct.vlan_hdr*, %struct.vlan_hdr** %14, align 8
  %60 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %66

61:                                               ; preds = %49, %26
  %62 = load i32, i32* %12, align 4
  %63 = call i8* @htons(i32 %62)
  %64 = load %struct.vlan_hdr*, %struct.vlan_hdr** %14, align 8
  %65 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %61, %55
  %67 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %13, align 8
  %68 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %13, align 8
  %73 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call zeroext i16 @ntohs(i32 %74)
  store i16 %75, i16* %9, align 2
  %76 = load i32, i32* @VLAN_HLEN, align 4
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %66, %6
  %78 = load i8*, i8** %11, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.net_device*, %struct.net_device** %8, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %11, align 8
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %13, align 8
  %86 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %85, i32 0, i32 2
  %87 = load %struct.net_device*, %struct.net_device** %86, align 8
  store %struct.net_device* %87, %struct.net_device** %8, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = load %struct.net_device*, %struct.net_device** %8, align 8
  %90 = load i16, i16* %9, align 2
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add i32 %93, %94
  %96 = call i32 @dev_hard_header(%struct.sk_buff* %88, %struct.net_device* %89, i16 zeroext %90, i8* %91, i8* %92, i32 %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %84
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %17, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %17, align 4
  br label %103

103:                                              ; preds = %99, %84
  %104 = load i32, i32* %17, align 4
  ret i32 %104
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local %struct.vlan_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_dev_get_egress_qos_mask(%struct.net_device*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i16 zeroext, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
