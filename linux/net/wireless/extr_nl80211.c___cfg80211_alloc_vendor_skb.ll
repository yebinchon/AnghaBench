; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___cfg80211_alloc_vendor_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___cfg80211_alloc_vendor_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.cfg80211_registered_device = type { i32 }
%struct.wireless_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nl80211_vendor_cmd_info = type { i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_VENDOR_ID = common dso_local global i32 0, align 4
@NL80211_ATTR_VENDOR_SUBCMD = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.cfg80211_registered_device*, %struct.wireless_dev*, i32, i32, i32, i32, i32, %struct.nl80211_vendor_cmd_info*, i32)* @__cfg80211_alloc_vendor_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @__cfg80211_alloc_vendor_skb(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.nl80211_vendor_cmd_info* %7, i32 %8) #0 {
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.wireless_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nl80211_vendor_cmd_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.nlattr*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %11, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.nl80211_vendor_cmd_info* %7, %struct.nl80211_vendor_cmd_info** %18, align 8
  store i32 %8, i32* %19, align 4
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, 100
  %25 = load i32, i32* %19, align 4
  %26 = call %struct.sk_buff* @nlmsg_new(i32 %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %20, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %9
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  br label %133

30:                                               ; preds = %9
  %31 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i8* @nl80211hdr_put(%struct.sk_buff* %31, i32 %32, i32 %33, i32 0, i32 %34)
  store i8* %35, i8** %21, align 8
  %36 = load i8*, i8** %21, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  br label %133

41:                                               ; preds = %30
  %42 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %43 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %45 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @nla_put_u32(%struct.sk_buff* %42, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %130

50:                                               ; preds = %41
  %51 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %18, align 8
  %52 = icmp ne %struct.nl80211_vendor_cmd_info* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %55 = load i32, i32* @NL80211_ATTR_VENDOR_ID, align 4
  %56 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %18, align 8
  %57 = getelementptr inbounds %struct.nl80211_vendor_cmd_info, %struct.nl80211_vendor_cmd_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @nla_put_u32(%struct.sk_buff* %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %130

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %64 = load i32, i32* @NL80211_ATTR_VENDOR_SUBCMD, align 4
  %65 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %18, align 8
  %66 = getelementptr inbounds %struct.nl80211_vendor_cmd_info, %struct.nl80211_vendor_cmd_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @nla_put_u32(%struct.sk_buff* %63, i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %130

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %74 = icmp ne %struct.wireless_dev* %73, null
  br i1 %74, label %75, label %101

75:                                               ; preds = %72
  %76 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %77 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %78 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %79 = call i32 @wdev_id(%struct.wireless_dev* %78)
  %80 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %81 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %76, i32 %77, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %130

84:                                               ; preds = %75
  %85 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %86 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = icmp ne %struct.TYPE_2__* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %91 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %92 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %93 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @nla_put_u32(%struct.sk_buff* %90, i32 %91, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %130

100:                                              ; preds = %89, %84
  br label %101

101:                                              ; preds = %100, %72
  %102 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %102, i32 %103)
  store %struct.nlattr* %104, %struct.nlattr** %22, align 8
  %105 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %106 = icmp ne %struct.nlattr* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  br label %130

108:                                              ; preds = %101
  %109 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %110 = bitcast %struct.cfg80211_registered_device* %109 to i8*
  %111 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8**
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  store i8* %110, i8** %115, align 8
  %116 = load i8*, i8** %21, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i8**
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  store i8* %116, i8** %121, align 8
  %122 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %123 = bitcast %struct.nlattr* %122 to i8*
  %124 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i8**
  %128 = getelementptr inbounds i8*, i8** %127, i64 2
  store i8* %123, i8** %128, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %129, %struct.sk_buff** %10, align 8
  br label %133

130:                                              ; preds = %107, %99, %83, %70, %61, %49
  %131 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %132 = call i32 @kfree_skb(%struct.sk_buff* %131)
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  br label %133

133:                                              ; preds = %130, %108, %38, %29
  %134 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %134
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
