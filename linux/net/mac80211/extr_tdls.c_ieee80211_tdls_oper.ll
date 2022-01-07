; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_oper.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.sta_info = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.ieee80211_local*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ieee80211_local = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TDLS oper %d peer %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"TDLS: disallow link during CSA\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_PEER_AUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_tdls_oper(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %14)
  store %struct.ieee80211_sub_if_data* %15, %struct.ieee80211_sub_if_data** %11, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 1
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %12, align 8
  %19 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %20 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %182

28:                                               ; preds = %4
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %182

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %44 [
    i32 130, label %40
    i32 132, label %40
    i32 128, label %41
    i32 129, label %41
    i32 131, label %41
  ]

40:                                               ; preds = %38, %38
  br label %44

41:                                               ; preds = %38, %38, %38
  %42 = load i32, i32* @ENOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %182

44:                                               ; preds = %38, %40
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %46 = call i32 @sdata_lock(%struct.ieee80211_sub_if_data* %45)
  %47 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %48 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @tdls_dbg(%struct.ieee80211_sub_if_data* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %51, i32* %52)
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %135 [
    i32 130, label %55
    i32 132, label %115
  ]

55:                                               ; preds = %44
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %63 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @tdls_dbg(%struct.ieee80211_sub_if_data* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %13, align 4
  br label %138

66:                                               ; preds = %55
  %67 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %68 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %67, i32 0, i32 2
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %70, i32* %71)
  store %struct.sta_info* %72, %struct.sta_info** %10, align 8
  %73 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %74 = icmp ne %struct.sta_info* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %66
  %76 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %77 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %76, i32 0, i32 2
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* @ENOLINK, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %13, align 4
  br label %138

81:                                               ; preds = %66
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %83 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %84 = call i32 @iee80211_tdls_recalc_chanctx(%struct.ieee80211_sub_if_data* %82, %struct.sta_info* %83)
  %85 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %86 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %87 = call i32 @iee80211_tdls_recalc_ht_protection(%struct.ieee80211_sub_if_data* %85, %struct.sta_info* %86)
  %88 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %89 = load i32, i32* @WLAN_STA_TDLS_PEER_AUTH, align 4
  %90 = call i32 @set_sta_flag(%struct.sta_info* %88, i32 %89)
  %91 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %92 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %91, i32 0, i32 2
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %95 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @is_zero_ether_addr(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %81
  %102 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = call i64 @ether_addr_equal(i32 %106, i32* %107)
  %109 = icmp ne i64 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %101, %81
  %112 = phi i1 [ true, %81 ], [ %110, %101 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @WARN_ON_ONCE(i32 %113)
  store i32 0, i32* %13, align 4
  br label %138

115:                                              ; preds = %44
  %116 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %117 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %116, i32 0, i32 3
  %118 = call i32 @tasklet_kill(i32* %117)
  %119 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %120 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %121 = call i32 @ieee80211_flush_queues(%struct.ieee80211_local* %119, %struct.ieee80211_sub_if_data* %120, i32 0)
  %122 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @sta_info_destroy_addr(%struct.ieee80211_sub_if_data* %122, i32* %123)
  store i32 %124, i32* %13, align 4
  %125 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %126 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %125, i32 0, i32 2
  %127 = call i32 @mutex_lock(i32* %126)
  %128 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %129 = call i32 @iee80211_tdls_recalc_ht_protection(%struct.ieee80211_sub_if_data* %128, %struct.sta_info* null)
  %130 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %131 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %130, i32 0, i32 2
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %134 = call i32 @iee80211_tdls_recalc_chanctx(%struct.ieee80211_sub_if_data* %133, %struct.sta_info* null)
  br label %138

135:                                              ; preds = %44
  %136 = load i32, i32* @ENOTSUPP, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %135, %115, %111, %75, %61
  %139 = load i32, i32* %13, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %138
  %142 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %143 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = call i64 @ether_addr_equal(i32 %146, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %141
  %151 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %152 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = call i32 @cancel_delayed_work(i32* %154)
  %156 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %157 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @eth_zero_addr(i32 %160)
  br label %162

162:                                              ; preds = %150, %141, %138
  %163 = load i32, i32* %13, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %162
  %166 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %167 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %166, i32 0, i32 1
  %168 = load %struct.ieee80211_local*, %struct.ieee80211_local** %167, align 8
  %169 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %168, i32 0, i32 1
  %170 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %171 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = call i32 @ieee80211_queue_work(i32* %169, i32* %173)
  br label %175

175:                                              ; preds = %165, %162
  %176 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %177 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %176, i32 0, i32 0
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %180 = call i32 @sdata_unlock(%struct.ieee80211_sub_if_data* %179)
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %175, %41, %35, %25
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @sdata_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tdls_dbg(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iee80211_tdls_recalc_chanctx(%struct.ieee80211_sub_if_data*, %struct.sta_info*) #1

declare dso_local i32 @iee80211_tdls_recalc_ht_protection(%struct.ieee80211_sub_if_data*, %struct.sta_info*) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ieee80211_flush_queues(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @sta_info_destroy_addr(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

declare dso_local i32 @sdata_unlock(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
