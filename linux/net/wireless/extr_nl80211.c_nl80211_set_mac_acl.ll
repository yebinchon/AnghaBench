; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_mac_acl.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_mac_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.net_device** }
%struct.net_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.cfg80211_acl_data = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_mac_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_mac_acl(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cfg80211_acl_data*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 0
  %12 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = bitcast %struct.net_device* %14 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %28, %2
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %69

49:                                               ; preds = %39
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %51 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %50, i32 0, i32 0
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = call %struct.cfg80211_acl_data* @parse_acl_data(i32* %51, %struct.genl_info* %52)
  store %struct.cfg80211_acl_data* %53, %struct.cfg80211_acl_data** %8, align 8
  %54 = load %struct.cfg80211_acl_data*, %struct.cfg80211_acl_data** %8, align 8
  %55 = call i64 @IS_ERR(%struct.cfg80211_acl_data* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.cfg80211_acl_data*, %struct.cfg80211_acl_data** %8, align 8
  %59 = call i32 @PTR_ERR(%struct.cfg80211_acl_data* %58)
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %49
  %61 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %62 = bitcast %struct.cfg80211_registered_device* %61 to %struct.net_device*
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = load %struct.cfg80211_acl_data*, %struct.cfg80211_acl_data** %8, align 8
  %65 = call i32 @rdev_set_mac_acl(%struct.net_device* %62, %struct.net_device* %63, %struct.cfg80211_acl_data* %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.cfg80211_acl_data*, %struct.cfg80211_acl_data** %8, align 8
  %67 = call i32 @kfree(%struct.cfg80211_acl_data* %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %57, %46, %36
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.cfg80211_acl_data* @parse_acl_data(i32*, %struct.genl_info*) #1

declare dso_local i64 @IS_ERR(%struct.cfg80211_acl_data*) #1

declare dso_local i32 @PTR_ERR(%struct.cfg80211_acl_data*) #1

declare dso_local i32 @rdev_set_mac_acl(%struct.net_device*, %struct.net_device*, %struct.cfg80211_acl_data*) #1

declare dso_local i32 @kfree(%struct.cfg80211_acl_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
