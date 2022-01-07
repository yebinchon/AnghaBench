; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_pmsr.c_cfg80211_pmsr_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_pmsr.c_cfg80211_pmsr_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, i32 }
%struct.cfg80211_pmsr_request = type { i32, i32, i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_PEER_MEASUREMENT_COMPLETE = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_pmsr_complete(%struct.wireless_dev* %0, %struct.cfg80211_pmsr_request* %1, i32 %2) #0 {
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.cfg80211_pmsr_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %4, align 8
  store %struct.cfg80211_pmsr_request* %1, %struct.cfg80211_pmsr_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %11 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %12)
  store %struct.cfg80211_registered_device* %13, %struct.cfg80211_registered_device** %7, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %18 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %5, align 8
  %19 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @trace_cfg80211_pmsr_complete(i32 %16, %struct.wireless_dev* %17, i32 %20)
  %22 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.sk_buff* @nlmsg_new(i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %78

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = load i32, i32* @NL80211_CMD_PEER_MEASUREMENT_COMPLETE, align 4
  %31 = call i8* @nl80211hdr_put(%struct.sk_buff* %29, i32 0, i32 0, i32 0, i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %75

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @nla_put_u32(%struct.sk_buff* %36, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %47 = call i32 @wdev_id(%struct.wireless_dev* %46)
  %48 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %49 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %44, i32 %45, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %35
  br label %75

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %55 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %5, align 8
  %56 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %59 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %53, i32 %54, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %75

62:                                               ; preds = %52
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @genlmsg_end(%struct.sk_buff* %63, i8* %64)
  %66 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %67 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wiphy_net(i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %71 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %5, align 8
  %72 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @genlmsg_unicast(i32 %69, %struct.sk_buff* %70, i32 %73)
  br label %78

75:                                               ; preds = %61, %51, %34
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = call i32 @nlmsg_free(%struct.sk_buff* %76)
  br label %78

78:                                               ; preds = %75, %62, %27
  %79 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %80 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %79, i32 0, i32 0
  %81 = call i32 @spin_lock_bh(i32* %80)
  %82 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %5, align 8
  %83 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %82, i32 0, i32 0
  %84 = call i32 @list_del(i32* %83)
  %85 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %86 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock_bh(i32* %86)
  %88 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %5, align 8
  %89 = call i32 @kfree(%struct.cfg80211_pmsr_request* %88)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @trace_cfg80211_pmsr_complete(i32, %struct.wireless_dev*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @wiphy_net(i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.cfg80211_pmsr_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
