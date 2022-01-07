; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_prepare_cqm.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_prepare_cqm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_NOTIFY_CQM = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, i8*, i32)* @cfg80211_prepare_cqm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cfg80211_prepare_cqm(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8**, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %14, %struct.wireless_dev** %8, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %17)
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %9, align 8
  %19 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.sk_buff* @nlmsg_new(i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %90

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8**
  store i8** %29, i8*** %11, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = load i32, i32* @NL80211_CMD_NOTIFY_CQM, align 4
  %32 = call i8* @nl80211hdr_put(%struct.sk_buff* %30, i32 0, i32 0, i32 0, i32 %31)
  %33 = load i8**, i8*** %11, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  store i8* %32, i8** %34, align 8
  %35 = load i8**, i8*** %11, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %25
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = call i32 @nlmsg_free(%struct.sk_buff* %40)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %90

42:                                               ; preds = %25
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %46 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @nla_put_u32(%struct.sk_buff* %43, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50, %42
  br label %87

59:                                               ; preds = %50
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @nla_put(%struct.sk_buff* %63, i32 %64, i32 %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %87

70:                                               ; preds = %62, %59
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = load i32, i32* @NL80211_ATTR_CQM, align 4
  %73 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %71, i32 %72)
  %74 = load i8**, i8*** %11, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  store i8* %73, i8** %75, align 8
  %76 = load i8**, i8*** %11, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  br label %87

81:                                               ; preds = %70
  %82 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %83 = bitcast %struct.cfg80211_registered_device* %82 to i8*
  %84 = load i8**, i8*** %11, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %86, %struct.sk_buff** %4, align 8
  br label %90

87:                                               ; preds = %80, %69, %58
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = call i32 @nlmsg_free(%struct.sk_buff* %88)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %90

90:                                               ; preds = %87, %81, %39, %24
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %91
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i8* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
