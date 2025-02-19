; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_update_owe_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_update_owe_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.cfg80211_update_owe_info = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_STATUS_CODE = common dso_local global i64 0, align 8
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_update_owe_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_update_owe_info(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.cfg80211_update_owe_info, align 4
  %8 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 1
  %11 = load %struct.net_device**, %struct.net_device*** %10, align 8
  %12 = getelementptr inbounds %struct.net_device*, %struct.net_device** %11, i64 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = bitcast %struct.net_device* %13 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %14, %struct.cfg80211_registered_device** %6, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %21 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %97

29:                                               ; preds = %2
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @NL80211_ATTR_STATUS_CODE, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37, %29
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %97

48:                                               ; preds = %37
  %49 = call i32 @memset(%struct.cfg80211_update_owe_info* %7, i32 0, i32 16)
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @NL80211_ATTR_STATUS_CODE, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @nla_get_u16(i64 %55)
  %57 = getelementptr inbounds %struct.cfg80211_update_owe_info, %struct.cfg80211_update_owe_info* %7, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.cfg80211_update_owe_info, %struct.cfg80211_update_owe_info* %7, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i32 @nla_memcpy(i32 %59, i64 %65, i32 %66)
  %68 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %69 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @NL80211_ATTR_IE, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %48
  %76 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %77 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @NL80211_ATTR_IE, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @nla_data(i64 %81)
  %83 = getelementptr inbounds %struct.cfg80211_update_owe_info, %struct.cfg80211_update_owe_info* %7, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %85 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @NL80211_ATTR_IE, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @nla_len(i64 %89)
  %91 = getelementptr inbounds %struct.cfg80211_update_owe_info, %struct.cfg80211_update_owe_info* %7, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %75, %48
  %93 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %94 = bitcast %struct.cfg80211_registered_device* %93 to %struct.net_device*
  %95 = load %struct.net_device*, %struct.net_device** %8, align 8
  %96 = call i32 @rdev_update_owe_info(%struct.net_device* %94, %struct.net_device* %95, %struct.cfg80211_update_owe_info* %7)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %45, %26
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @memset(%struct.cfg80211_update_owe_info*, i32, i32) #1

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i32 @nla_memcpy(i32, i64, i32) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @rdev_update_owe_info(%struct.net_device*, %struct.net_device*, %struct.cfg80211_update_owe_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
