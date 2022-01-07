; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_pre_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_pre_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_ops = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.wireless_dev**, i32 }
%struct.wireless_dev = type { i32, %struct.wireless_dev* }
%struct.cfg80211_registered_device = type { i32, %struct.cfg80211_registered_device* }
%struct.net_device = type { i32, %struct.net_device* }

@NL80211_FLAG_NEED_RTNL = common dso_local global i32 0, align 4
@NL80211_FLAG_NEED_WIPHY = common dso_local global i32 0, align 4
@NL80211_FLAG_NEED_NETDEV = common dso_local global i32 0, align 4
@NL80211_FLAG_NEED_WDEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_FLAG_CHECK_NETDEV_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_ops*, %struct.sk_buff*, %struct.genl_info*)* @nl80211_pre_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_pre_doit(%struct.genl_ops* %0, %struct.sk_buff* %1, %struct.genl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_ops*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.genl_ops* %0, %struct.genl_ops** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.genl_info* %2, %struct.genl_info** %7, align 8
  %12 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %13 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NL80211_FLAG_NEED_RTNL, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 (...) @rtnl_lock()
  br label %21

21:                                               ; preds = %19, %3
  %22 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %23 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NL80211_FLAG_NEED_WIPHY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %21
  %29 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %30 = call i32 @genl_info_net(%struct.genl_info* %29)
  %31 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %32 = call %struct.wireless_dev* @cfg80211_get_dev_from_info(i32 %30, %struct.genl_info* %31)
  %33 = bitcast %struct.wireless_dev* %32 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %33, %struct.cfg80211_registered_device** %8, align 8
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %35 = bitcast %struct.cfg80211_registered_device* %34 to %struct.wireless_dev*
  %36 = call i64 @IS_ERR(%struct.wireless_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @rtnl_unlock()
  br label %43

43:                                               ; preds = %41, %38
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %45 = bitcast %struct.cfg80211_registered_device* %44 to %struct.wireless_dev*
  %46 = call i32 @PTR_ERR(%struct.wireless_dev* %45)
  store i32 %46, i32* %4, align 4
  br label %162

47:                                               ; preds = %28
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %49 = bitcast %struct.cfg80211_registered_device* %48 to %struct.wireless_dev*
  %50 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 0
  %52 = load %struct.wireless_dev**, %struct.wireless_dev*** %51, align 8
  %53 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %52, i64 0
  store %struct.wireless_dev* %49, %struct.wireless_dev** %53, align 8
  br label %161

54:                                               ; preds = %21
  %55 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %56 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NL80211_FLAG_NEED_NETDEV, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %63 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NL80211_FLAG_NEED_WDEV, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %160

68:                                               ; preds = %61, %54
  %69 = call i32 (...) @ASSERT_RTNL()
  %70 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %71 = call i32 @genl_info_net(%struct.genl_info* %70)
  %72 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %73 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.wireless_dev* @__cfg80211_wdev_from_attrs(i32 %71, i32 %74)
  store %struct.wireless_dev* %75, %struct.wireless_dev** %9, align 8
  %76 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %77 = call i64 @IS_ERR(%struct.wireless_dev* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %68
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (...) @rtnl_unlock()
  br label %84

84:                                               ; preds = %82, %79
  %85 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %86 = call i32 @PTR_ERR(%struct.wireless_dev* %85)
  store i32 %86, i32* %4, align 4
  br label %162

87:                                               ; preds = %68
  %88 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %89 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %88, i32 0, i32 1
  %90 = load %struct.wireless_dev*, %struct.wireless_dev** %89, align 8
  %91 = bitcast %struct.wireless_dev* %90 to %struct.net_device*
  store %struct.net_device* %91, %struct.net_device** %10, align 8
  %92 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %93 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.wireless_dev* @wiphy_to_rdev(i32 %94)
  %96 = bitcast %struct.wireless_dev* %95 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %96, %struct.cfg80211_registered_device** %8, align 8
  %97 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %98 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @NL80211_FLAG_NEED_NETDEV, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %87
  %104 = load %struct.net_device*, %struct.net_device** %10, align 8
  %105 = icmp ne %struct.net_device* %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (...) @rtnl_unlock()
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %162

114:                                              ; preds = %103
  %115 = load %struct.net_device*, %struct.net_device** %10, align 8
  %116 = bitcast %struct.net_device* %115 to %struct.wireless_dev*
  %117 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %118 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %117, i32 0, i32 0
  %119 = load %struct.wireless_dev**, %struct.wireless_dev*** %118, align 8
  %120 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %119, i64 1
  store %struct.wireless_dev* %116, %struct.wireless_dev** %120, align 8
  br label %127

121:                                              ; preds = %87
  %122 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %123 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %124 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %123, i32 0, i32 0
  %125 = load %struct.wireless_dev**, %struct.wireless_dev*** %124, align 8
  %126 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %125, i64 1
  store %struct.wireless_dev* %122, %struct.wireless_dev** %126, align 8
  br label %127

127:                                              ; preds = %121, %114
  %128 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %129 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @NL80211_FLAG_CHECK_NETDEV_UP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %127
  %135 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %136 = call i32 @wdev_running(%struct.wireless_dev* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 (...) @rtnl_unlock()
  br label %143

143:                                              ; preds = %141, %138
  %144 = load i32, i32* @ENETDOWN, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %162

146:                                              ; preds = %134, %127
  %147 = load %struct.net_device*, %struct.net_device** %10, align 8
  %148 = icmp ne %struct.net_device* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load %struct.net_device*, %struct.net_device** %10, align 8
  %151 = bitcast %struct.net_device* %150 to %struct.wireless_dev*
  %152 = call i32 @dev_hold(%struct.wireless_dev* %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %155 = bitcast %struct.cfg80211_registered_device* %154 to %struct.wireless_dev*
  %156 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %157 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %156, i32 0, i32 0
  %158 = load %struct.wireless_dev**, %struct.wireless_dev*** %157, align 8
  %159 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %158, i64 0
  store %struct.wireless_dev* %155, %struct.wireless_dev** %159, align 8
  br label %160

160:                                              ; preds = %153, %61
  br label %161

161:                                              ; preds = %160, %47
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %143, %111, %84, %43
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.wireless_dev* @cfg80211_get_dev_from_info(i32, %struct.genl_info*) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i64 @IS_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @PTR_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.wireless_dev* @__cfg80211_wdev_from_attrs(i32, i32) #1

declare dso_local %struct.wireless_dev* @wiphy_to_rdev(i32) #1

declare dso_local i32 @wdev_running(%struct.wireless_dev*) #1

declare dso_local i32 @dev_hold(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
