; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_lookup_ra_sta.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_lookup_ra_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sta_info = type { i32 }

@ENOLINK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_PEER = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_PEER_AUTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, %struct.sta_info**)* @ieee80211_lookup_ra_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_lookup_ra_sta(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, %struct.sta_info** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sta_info**, align 8
  %8 = alloca %struct.sta_info*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sta_info** %2, %struct.sta_info*** %7, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %115 [
    i32 132, label %13
    i32 133, label %36
    i32 130, label %36
    i32 134, label %36
    i32 128, label %53
    i32 129, label %61
  ]

13:                                               ; preds = %3
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.sta_info* @rcu_dereference(i32 %18)
  store %struct.sta_info* %19, %struct.sta_info** %8, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %21 = icmp ne %struct.sta_info* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %24 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  store %struct.sta_info* %23, %struct.sta_info** %24, align 8
  store i32 0, i32* %4, align 4
  br label %129

25:                                               ; preds = %13
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOLINK, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %129

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %3, %3, %3, %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @is_multicast_ether_addr(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.sta_info* @ERR_PTR(i32 %44)
  %46 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  store %struct.sta_info* %45, %struct.sta_info** %46, align 8
  store i32 0, i32* %4, align 4
  br label %129

47:                                               ; preds = %36
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %48, i32 %51)
  store %struct.sta_info* %52, %struct.sta_info** %8, align 8
  br label %118

53:                                               ; preds = %3
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %54, i32 %59)
  store %struct.sta_info* %60, %struct.sta_info** %8, align 8
  br label %118

61:                                               ; preds = %3
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %61
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %72, i32 %75)
  store %struct.sta_info* %76, %struct.sta_info** %8, align 8
  %77 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %78 = icmp ne %struct.sta_info* %77, null
  br i1 %78, label %79, label %100

79:                                               ; preds = %71
  %80 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %81 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %82 = call i32 @test_sta_flag(%struct.sta_info* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %79
  %85 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %86 = load i32, i32* @WLAN_STA_TDLS_PEER_AUTH, align 4
  %87 = call i32 @test_sta_flag(%struct.sta_info* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %91 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  store %struct.sta_info* %90, %struct.sta_info** %91, align 8
  store i32 0, i32* %4, align 4
  br label %129

92:                                               ; preds = %84
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = call i32 @ieee80211_is_tdls_setup(%struct.sk_buff* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %129

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %79, %71
  br label %101

101:                                              ; preds = %100, %61
  %102 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %102, i32 %107)
  store %struct.sta_info* %108, %struct.sta_info** %8, align 8
  %109 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %110 = icmp ne %struct.sta_info* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %101
  %112 = load i32, i32* @ENOLINK, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %129

114:                                              ; preds = %101
  br label %118

115:                                              ; preds = %3
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %129

118:                                              ; preds = %114, %53, %47
  %119 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %120 = icmp ne %struct.sta_info* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  %125 = call %struct.sta_info* @ERR_PTR(i32 %124)
  br label %126

126:                                              ; preds = %122, %121
  %127 = phi %struct.sta_info* [ %119, %121 ], [ %125, %122 ]
  %128 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  store %struct.sta_info* %127, %struct.sta_info** %128, align 8
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %126, %115, %111, %96, %89, %42, %31, %22
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.sta_info* @rcu_dereference(i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local %struct.sta_info* @ERR_PTR(i32) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_is_tdls_setup(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
