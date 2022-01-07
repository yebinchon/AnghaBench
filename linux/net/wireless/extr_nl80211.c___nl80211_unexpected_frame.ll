; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___nl80211_unexpected_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___nl80211_unexpected_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*, i32)* @__nl80211_unexpected_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nl80211_unexpected_frame(%struct.net_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %10, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %11, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @READ_ONCE(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %81

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.sk_buff* @nlmsg_new(i32 100, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %12, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %81

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @nl80211hdr_put(%struct.sk_buff* %36, i32 0, i32 0, i32 0, i32 %37)
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = call i32 @nlmsg_free(%struct.sk_buff* %42)
  store i32 1, i32* %5, align 4
  br label %81

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %46 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %47 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %48 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %45, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %44
  %53 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %54 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @nla_put_u32(%struct.sk_buff* %53, i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i64 @nla_put(%struct.sk_buff* %61, i32 %62, i32 %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60, %52, %44
  br label %78

68:                                               ; preds = %60
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @genlmsg_end(%struct.sk_buff* %69, i8* %70)
  %72 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %73 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %72, i32 0, i32 0
  %74 = call i32 @wiphy_net(i32* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @genlmsg_unicast(i32 %74, %struct.sk_buff* %75, i32 %76)
  store i32 1, i32* %5, align 4
  br label %81

78:                                               ; preds = %67
  %79 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %80 = call i32 @nlmsg_free(%struct.sk_buff* %79)
  store i32 1, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %68, %41, %34, %28
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
