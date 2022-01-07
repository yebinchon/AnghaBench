; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_mcast_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_mcast_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_OCB = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_MCAST_RATE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_mcast_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_mcast_rate(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 1
  %15 = load %struct.net_device**, %struct.net_device*** %14, align 8
  %16 = getelementptr inbounds %struct.net_device*, %struct.net_device** %15, i64 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = bitcast %struct.net_device* %17 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %6, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 1
  %21 = load %struct.net_device**, %struct.net_device*** %20, align 8
  %22 = getelementptr inbounds %struct.net_device*, %struct.net_device** %21, i64 1
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %7, align 8
  %24 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %2
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %35
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_IFTYPE_OCB, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %100

54:                                               ; preds = %43, %35, %2
  %55 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %56 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %100

64:                                               ; preds = %54
  %65 = mul nuw i64 4, %25
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memset(i32* %27, i32 0, i32 %66)
  %68 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %69 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @NL80211_ATTR_MCAST_RATE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %100

78:                                               ; preds = %64
  %79 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %80 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @NL80211_ATTR_MCAST_RATE, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @nla_get_u32(i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %87 = bitcast %struct.cfg80211_registered_device* %86 to %struct.net_device*
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @nl80211_parse_mcast_rate(%struct.net_device* %87, i32* %27, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %78
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %100

94:                                               ; preds = %78
  %95 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %96 = bitcast %struct.cfg80211_registered_device* %95 to %struct.net_device*
  %97 = load %struct.net_device*, %struct.net_device** %7, align 8
  %98 = call i32 @rdev_set_mcast_rate(%struct.net_device* %96, %struct.net_device* %97, i32* %27)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %94, %91, %75, %61, %51
  %101 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @nla_get_u32(i32) #2

declare dso_local i32 @nl80211_parse_mcast_rate(%struct.net_device*, i32*, i32) #2

declare dso_local i32 @rdev_set_mcast_rate(%struct.net_device*, %struct.net_device*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
