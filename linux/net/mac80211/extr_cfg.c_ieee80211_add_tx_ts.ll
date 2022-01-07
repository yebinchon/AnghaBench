; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_add_tx_ts.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_add_tx_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i64 }

@ieee802_1d_to_ac = common dso_local global i32* null, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i64, i64*, i64, i32)* @ieee80211_add_tx_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_add_tx_ts(%struct.wiphy* %0, %struct.net_device* %1, i64 %2, i64* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_sub_if_data*, align 8
  %15 = alloca %struct.ieee80211_if_managed*, align 8
  %16 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.net_device*, %struct.net_device** %9, align 8
  %18 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %17)
  store %struct.ieee80211_sub_if_data* %18, %struct.ieee80211_sub_if_data** %14, align 8
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.ieee80211_if_managed* %21, %struct.ieee80211_if_managed** %15, align 8
  %22 = load i32*, i32** @ieee802_1d_to_ac, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %16, align 4
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %6
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %89

35:                                               ; preds = %6
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @BIT(i64 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %89

46:                                               ; preds = %35
  %47 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %48 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %89

59:                                               ; preds = %46
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = mul nsw i32 32, %63
  %65 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %66 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %74 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i64 %72, i64* %79, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %15, align 8
  %82 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i64 %80, i64* %87, align 8
  br label %88

88:                                               ; preds = %62, %59
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %88, %56, %43, %32
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
