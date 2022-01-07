; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.wireless_dev = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__, i32*, i64, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.cfg80211_cached_keys = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CFG80211_MAX_WEP_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_cached_keys*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  store %struct.cfg80211_cached_keys* null, %struct.cfg80211_cached_keys** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %12 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %11)
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @netif_running(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %153

19:                                               ; preds = %2
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store i32 %23, i32* %27, align 4
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %33 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  store i32 %31, i32* %35, align 4
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %37 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 4
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %41 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %19
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %47 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %51 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 4
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %62 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %45
  br label %66

66:                                               ; preds = %65, %19
  %67 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %68 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %153

74:                                               ; preds = %66
  %75 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %76 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = icmp ne %struct.TYPE_7__* %78, null
  br i1 %79, label %80, label %124

80:                                               ; preds = %74
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %82 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %124

88:                                               ; preds = %80
  %89 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %90 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.cfg80211_cached_keys* @kmemdup(%struct.TYPE_7__* %92, i32 16, i32 %93)
  store %struct.cfg80211_cached_keys* %94, %struct.cfg80211_cached_keys** %6, align 8
  %95 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %6, align 8
  %96 = icmp ne %struct.cfg80211_cached_keys* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %153

100:                                              ; preds = %88
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %120, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @CFG80211_MAX_WEP_KEYS, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %6, align 8
  %107 = getelementptr inbounds %struct.cfg80211_cached_keys, %struct.cfg80211_cached_keys* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %6, align 8
  %114 = getelementptr inbounds %struct.cfg80211_cached_keys, %struct.cfg80211_cached_keys* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 %112, i32* %119, align 4
  br label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %101

123:                                              ; preds = %101
  br label %124

124:                                              ; preds = %123, %80, %74
  %125 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %126 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %132 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %7, align 8
  br label %135

135:                                              ; preds = %130, %124
  %136 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %137 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %138 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %141 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %6, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 @cfg80211_connect(%struct.cfg80211_registered_device* %136, i32 %139, %struct.TYPE_8__* %142, %struct.cfg80211_cached_keys* %143, i32* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %135
  %149 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %6, align 8
  %150 = call i32 @kzfree(%struct.cfg80211_cached_keys* %149)
  br label %151

151:                                              ; preds = %148, %135
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %97, %73, %18
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local %struct.cfg80211_cached_keys* @kmemdup(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @cfg80211_connect(%struct.cfg80211_registered_device*, i32, %struct.TYPE_8__*, %struct.cfg80211_cached_keys*, i32*) #1

declare dso_local i32 @kzfree(%struct.cfg80211_cached_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
