; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___cfg80211_send_event_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___cfg80211_send_event_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.cfg80211_registered_device = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i64 }

@NL80211_MCGRP_TESTMODE = common dso_local global i32 0, align 4
@NL80211_ATTR_VENDOR_DATA = common dso_local global i64 0, align 8
@NL80211_MCGRP_VENDOR = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cfg80211_send_event_skb(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8**
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8**
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %23)
  store %struct.nlmsghdr* %24, %struct.nlmsghdr** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8**
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.nlattr*
  store %struct.nlattr* %31, %struct.nlattr** %8, align 8
  %32 = load i32, i32* @NL80211_MCGRP_TESTMODE, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @memset(i64 %35, i32 0, i32 8)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %39 = call i32 @nla_nest_end(%struct.sk_buff* %37, %struct.nlattr* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @genlmsg_end(%struct.sk_buff* %40, i8* %41)
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %44 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %2
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 0
  %50 = call i32 @wiphy_net(i32* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %53 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @genlmsg_unicast(i32 %50, %struct.sk_buff* %51, i64 %54)
  br label %72

56:                                               ; preds = %2
  %57 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %58 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NL80211_ATTR_VENDOR_DATA, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @NL80211_MCGRP_VENDOR, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %56
  %65 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %66 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %65, i32 0, i32 0
  %67 = call i32 @wiphy_net(i32* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %67, %struct.sk_buff* %68, i32 0, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %47
  ret void
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i64) #1

declare dso_local i32 @wiphy_net(i32*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
