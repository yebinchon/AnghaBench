; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___nl80211_rx_control_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___nl80211_rx_control_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.ethhdr = type { i32* }
%struct.nlattr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_CONTROL_PORT_FRAME = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_CONTROL_PORT_ETHERTYPE = common dso_local global i32 0, align 4
@NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT = common dso_local global i32 0, align 4
@NL80211_ATTR_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, i32, i32)* @__nl80211_rx_control_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nl80211_rx_control_port(%struct.net_device* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.ethhdr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %20, align 8
  store %struct.wireless_dev* %21, %struct.wireless_dev** %10, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %24)
  store %struct.cfg80211_registered_device* %25, %struct.cfg80211_registered_device** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %26)
  store %struct.ethhdr* %27, %struct.ethhdr** %12, align 8
  %28 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %29 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be16_to_cpu(i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %36 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @READ_ONCE(i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %145

44:                                               ; preds = %4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 100, %47
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.sk_buff* @nlmsg_new(i32 %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %15, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %145

56:                                               ; preds = %44
  %57 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %58 = load i32, i32* @NL80211_CMD_CONTROL_PORT_FRAME, align 4
  %59 = call i8* @nl80211hdr_put(%struct.sk_buff* %57, i32 0, i32 0, i32 0, i32 %58)
  store i8* %59, i8** %16, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %64 = call i32 @nlmsg_free(%struct.sk_buff* %63)
  %65 = load i32, i32* @ENOBUFS, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %145

67:                                               ; preds = %56
  %68 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %69 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %70 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %71 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @nla_put_u32(%struct.sk_buff* %68, i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %112, label %75

75:                                               ; preds = %67
  %76 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %77 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @nla_put_u32(%struct.sk_buff* %76, i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %112, label %83

83:                                               ; preds = %75
  %84 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %85 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %86 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %87 = call i32 @wdev_id(%struct.wireless_dev* %86)
  %88 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %89 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %84, i32 %85, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %112, label %91

91:                                               ; preds = %83
  %92 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %93 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %94 = load i32, i32* @ETH_ALEN, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = call i64 @nla_put(%struct.sk_buff* %92, i32 %93, i32 %94, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %91
  %99 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %100 = load i32, i32* @NL80211_ATTR_CONTROL_PORT_ETHERTYPE, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i64 @nla_put_u16(%struct.sk_buff* %99, i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %109 = load i32, i32* @NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT, align 4
  %110 = call i64 @nla_put_flag(%struct.sk_buff* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107, %98, %91, %83, %75, %67
  br label %140

113:                                              ; preds = %107, %104
  %114 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %115 = load i32, i32* @NL80211_ATTR_FRAME, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %114, i32 %115, i32 %118)
  store %struct.nlattr* %119, %struct.nlattr** %17, align 8
  %120 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %121 = icmp ne %struct.nlattr* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %113
  br label %140

123:                                              ; preds = %113
  %124 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %125 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %126 = call i32 @nla_data(%struct.nlattr* %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @skb_copy_bits(%struct.sk_buff* %124, i32 0, i32 %126, i32 %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = call i32 @genlmsg_end(%struct.sk_buff* %131, i8* %132)
  %134 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %135 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %134, i32 0, i32 0
  %136 = call i32 @wiphy_net(i32* %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @genlmsg_unicast(i32 %136, %struct.sk_buff* %137, i32 %138)
  store i32 %139, i32* %5, align 4
  br label %145

140:                                              ; preds = %122, %112
  %141 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %142 = call i32 @nlmsg_free(%struct.sk_buff* %141)
  %143 = load i32, i32* @ENOBUFS, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %140, %123, %62, %53, %41
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
