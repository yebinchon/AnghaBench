; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_reg_do.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_reg_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, i32, i32 }
%struct.ieee80211_regdomain = type { i32 }
%struct.cfg80211_registered_device = type { %struct.wiphy }
%struct.wiphy = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_CMD_GET_REG = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i64 0, align 8
@REGULATORY_WIPHY_SELF_MANAGED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_USER_REG_HINT_TYPE = common dso_local global i64 0, align 8
@NL80211_USER_REG_HINT_CELL_BASE = common dso_local global i32 0, align 4
@cfg80211_regdomain = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_get_reg_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_get_reg_do(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.ieee80211_regdomain*, align 8
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %6, align 8
  store %struct.wiphy* null, %struct.wiphy** %8, align 8
  %12 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sk_buff* @nlmsg_new(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOBUFS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %133

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NL80211_CMD_GET_REG, align 4
  %29 = call i8* @nl80211hdr_put(%struct.sk_buff* %21, i32 %24, i32 %27, i32 0, i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %128

33:                                               ; preds = %20
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @NL80211_ATTR_WIPHY, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %33
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = call i32 @genl_info_net(%struct.genl_info* %42)
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = call %struct.cfg80211_registered_device* @cfg80211_get_dev_from_info(i32 %43, %struct.genl_info* %44)
  store %struct.cfg80211_registered_device* %45, %struct.cfg80211_registered_device** %7, align 8
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %47 = call i64 @IS_ERR(%struct.cfg80211_registered_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = call i32 @nlmsg_free(%struct.sk_buff* %50)
  %52 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %53 = call i32 @PTR_ERR(%struct.cfg80211_registered_device* %52)
  store i32 %53, i32* %3, align 4
  br label %133

54:                                               ; preds = %41
  %55 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %56 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %55, i32 0, i32 0
  store %struct.wiphy* %56, %struct.wiphy** %8, align 8
  %57 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %58 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %63 = call %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy* %62)
  store %struct.ieee80211_regdomain* %63, %struct.ieee80211_regdomain** %6, align 8
  %64 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %65 = icmp ne %struct.ieee80211_regdomain* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %66, %54
  %70 = phi i1 [ false, %54 ], [ %68, %66 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @WARN_ON(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = call i32 @nlmsg_free(%struct.sk_buff* %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %133

79:                                               ; preds = %69
  %80 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %81 = icmp ne %struct.ieee80211_regdomain* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = load i64, i64* @NL80211_ATTR_WIPHY, align 8
  %85 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %86 = call i32 @get_wiphy_idx(%struct.wiphy* %85)
  %87 = call i64 @nla_put_u32(%struct.sk_buff* %83, i64 %84, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %127

90:                                               ; preds = %82, %79
  br label %91

91:                                               ; preds = %90, %33
  %92 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %93 = icmp ne %struct.wiphy* %92, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = call i64 (...) @reg_last_request_cell_base()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = load i64, i64* @NL80211_ATTR_USER_REG_HINT_TYPE, align 8
  %100 = load i32, i32* @NL80211_USER_REG_HINT_CELL_BASE, align 4
  %101 = call i64 @nla_put_u32(%struct.sk_buff* %98, i64 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %127

104:                                              ; preds = %97, %94, %91
  %105 = call i32 (...) @rcu_read_lock()
  %106 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %107 = icmp ne %struct.ieee80211_regdomain* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @cfg80211_regdomain, align 4
  %110 = call %struct.ieee80211_regdomain* @rcu_dereference(i32 %109)
  store %struct.ieee80211_regdomain* %110, %struct.ieee80211_regdomain** %6, align 8
  br label %111

111:                                              ; preds = %108, %104
  %112 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = call i64 @nl80211_put_regdom(%struct.ieee80211_regdomain* %112, %struct.sk_buff* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %125

117:                                              ; preds = %111
  %118 = call i32 (...) @rcu_read_unlock()
  %119 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @genlmsg_end(%struct.sk_buff* %119, i8* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %123 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %124 = call i32 @genlmsg_reply(%struct.sk_buff* %122, %struct.genl_info* %123)
  store i32 %124, i32* %3, align 4
  br label %133

125:                                              ; preds = %116
  %126 = call i32 (...) @rcu_read_unlock()
  br label %127

127:                                              ; preds = %125, %103, %89
  br label %128

128:                                              ; preds = %127, %32
  %129 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %130 = call i32 @nlmsg_free(%struct.sk_buff* %129)
  %131 = load i32, i32* @EMSGSIZE, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %128, %117, %74, %49, %17
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local %struct.cfg80211_registered_device* @cfg80211_get_dev_from_info(i32, %struct.genl_info*) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i64 @IS_ERR(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.cfg80211_registered_device*) #1

declare dso_local %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @get_wiphy_idx(%struct.wiphy*) #1

declare dso_local i64 @reg_last_request_cell_base(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_regdomain* @rcu_dereference(i32) #1

declare dso_local i64 @nl80211_put_regdom(%struct.ieee80211_regdomain*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
