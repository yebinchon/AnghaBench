; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_crit_proto_stopped.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_crit_proto_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32, i64 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_CRIT_PROTOCOL_STOP = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_crit_proto_stopped(%struct.wireless_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %10 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %11)
  store %struct.cfg80211_registered_device* %12, %struct.cfg80211_registered_device** %5, align 8
  %13 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %14 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %67

18:                                               ; preds = %2
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %23 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.sk_buff* @nlmsg_new(i32 %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %67

30:                                               ; preds = %18
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load i32, i32* @NL80211_CMD_CRIT_PROTOCOL_STOP, align 4
  %33 = call i8* @nl80211hdr_put(%struct.sk_buff* %31, i32 0, i32 0, i32 0, i32 %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %64

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %41 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @nla_put_u32(%struct.sk_buff* %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %49 = call i32 @wdev_id(%struct.wireless_dev* %48)
  %50 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %51 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %46, i32 %47, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %37
  br label %64

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @genlmsg_end(%struct.sk_buff* %55, i8* %56)
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %59 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %58, i32 0, i32 0
  %60 = call i32 @wiphy_net(i32* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @genlmsg_unicast(i32 %60, %struct.sk_buff* %61, i64 %62)
  br label %67

64:                                               ; preds = %53, %36
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32 @nlmsg_free(%struct.sk_buff* %65)
  br label %67

67:                                               ; preds = %64, %54, %29, %17
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i64) #1

declare dso_local i32 @wiphy_net(i32*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
