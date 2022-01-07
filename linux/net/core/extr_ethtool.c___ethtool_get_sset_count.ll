; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_ethtool.c___ethtool_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_ethtool.c___ethtool_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.ethtool_ops* }
%struct.ethtool_ops = type { {}*, i64, i32 }

@ETH_SS_FEATURES = common dso_local global i32 0, align 4
@netdev_features_strings = common dso_local global i32 0, align 4
@ETH_SS_RSS_HASH_FUNCS = common dso_local global i32 0, align 4
@rss_hash_func_strings = common dso_local global i32 0, align 4
@ETH_SS_TUNABLES = common dso_local global i32 0, align 4
@tunable_strings = common dso_local global i32 0, align 4
@ETH_SS_PHY_TUNABLES = common dso_local global i32 0, align 4
@phy_tunable_strings = common dso_local global i32 0, align 4
@ETH_SS_PHY_STATS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @__ethtool_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ethtool_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ethtool_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  store %struct.ethtool_ops* %9, %struct.ethtool_ops** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ETH_SS_FEATURES, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @netdev_features_strings, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %78

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ETH_SS_RSS_HASH_FUNCS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @rss_hash_func_strings, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %78

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ETH_SS_TUNABLES, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @tunable_strings, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %78

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ETH_SS_PHY_TUNABLES, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @phy_tunable_strings, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %78

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ETH_SS_PHY_STATS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %48 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @phy_ethtool_get_sset_count(i64 %54)
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %46, %41, %37
  %57 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %58 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %57, i32 0, i32 0
  %59 = bitcast {}** %58 to i32 (%struct.net_device*, i32)**
  %60 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %59, align 8
  %61 = icmp ne i32 (%struct.net_device*, i32)* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %64 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %69 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %68, i32 0, i32 0
  %70 = bitcast {}** %69 to i32 (%struct.net_device*, i32)**
  %71 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 %71(%struct.net_device* %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %78

75:                                               ; preds = %62, %56
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %67, %51, %34, %27, %20, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @phy_ethtool_get_sset_count(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
