; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_dump_wiphy_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_dump_wiphy_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.nl80211_dump_wiphy_state = type { i32, %struct.nlattr* }
%struct.nlattr = type { i32 }
%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NUM_NL80211_ATTR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GENL_HDRLEN = common dso_local global i64 0, align 8
@nl80211_fam = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@nl80211_policy = common dso_local global i32 0, align 4
@NL80211_ATTR_SPLIT_WIPHY_DUMP = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY = common dso_local global i64 0, align 8
@NL80211_ATTR_WDEV = common dso_local global i64 0, align 8
@NL80211_ATTR_IFINDEX = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.nl80211_dump_wiphy_state*)* @nl80211_dump_wiphy_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_dump_wiphy_parse(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.nl80211_dump_wiphy_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.nl80211_dump_wiphy_state*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %6, align 8
  store %struct.nl80211_dump_wiphy_state* %2, %struct.nl80211_dump_wiphy_state** %7, align 8
  %13 = load i32, i32* @NUM_NL80211_ATTR, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nlattr** @kcalloc(i32 %13, i32 8, i32 %14)
  store %struct.nlattr** %15, %struct.nlattr*** %8, align 8
  %16 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %17 = icmp ne %struct.nlattr** %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %118

21:                                               ; preds = %3
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @GENL_HDRLEN, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nl80211_fam, i32 0, i32 1), align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nl80211_fam, i32 0, i32 0), align 8
  %30 = load i32, i32* @nl80211_policy, align 4
  %31 = call i32 @nlmsg_parse_deprecated(i32 %24, i64 %27, %struct.nlattr** %28, i32 %29, i32 %30, i32* null)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %114

35:                                               ; preds = %21
  %36 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %37 = load i64, i64* @NL80211_ATTR_SPLIT_WIPHY_DUMP, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %7, align 8
  %41 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %40, i32 0, i32 1
  store %struct.nlattr* %39, %struct.nlattr** %41, align 8
  %42 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %43 = load i64, i64* @NL80211_ATTR_WIPHY, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %35
  %48 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %49 = load i64, i64* @NL80211_ATTR_WIPHY, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i8* @nla_get_u32(%struct.nlattr* %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %7, align 8
  %55 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %47, %35
  %57 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %58 = load i64, i64* @NL80211_ATTR_WDEV, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %64 = load i64, i64* @NL80211_ATTR_WDEV, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call i32 @nla_get_u64(%struct.nlattr* %66)
  %68 = ashr i32 %67, 32
  %69 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %7, align 8
  %70 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %62, %56
  %72 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %73 = load i64, i64* @NL80211_ATTR_IFINDEX, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %113

77:                                               ; preds = %71
  %78 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %79 = load i64, i64* @NL80211_ATTR_IFINDEX, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i8* @nla_get_u32(%struct.nlattr* %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %12, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sock_net(i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = call %struct.net_device* @__dev_get_by_index(i32 %87, i32 %88)
  store %struct.net_device* %89, %struct.net_device** %10, align 8
  %90 = load %struct.net_device*, %struct.net_device** %10, align 8
  %91 = icmp ne %struct.net_device* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %77
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %9, align 4
  br label %114

95:                                               ; preds = %77
  %96 = load %struct.net_device*, %struct.net_device** %10, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = icmp ne %struct.TYPE_3__* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load %struct.net_device*, %struct.net_device** %10, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %105)
  store %struct.cfg80211_registered_device* %106, %struct.cfg80211_registered_device** %11, align 8
  %107 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %108 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %7, align 8
  %111 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %100, %95
  br label %113

113:                                              ; preds = %112, %71
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %113, %92, %34
  %115 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %116 = call i32 @kfree(%struct.nlattr** %115)
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %18
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.nlattr** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nlmsg_parse_deprecated(i32, i64, %struct.nlattr**, i32, i32, i32*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u64(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @kfree(%struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
