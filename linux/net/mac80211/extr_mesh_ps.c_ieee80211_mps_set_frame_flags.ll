; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_ieee80211_mps_set_frame_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_ieee80211_mps_set_frame_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.sta_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@NL80211_MESH_POWER_ACTIVE = common dso_local global i32 0, align 4
@IEEE80211_FCTL_PM = common dso_local global i32 0, align 4
@NL80211_MESH_POWER_DEEP_SLEEP = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_MESH_PS_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mps_set_frame_flags(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.ieee80211_hdr* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.ieee80211_hdr* %2, %struct.ieee80211_hdr** %6, align 8
  %9 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @is_unicast_ether_addr(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ieee80211_is_data_qos(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %22 = icmp ne %struct.sta_info* %21, null
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %20, %14, %3
  %25 = phi i1 [ false, %14 ], [ false, %3 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %128

30:                                               ; preds = %24
  %31 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @is_unicast_ether_addr(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ieee80211_is_data_qos(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %7, align 4
  br label %62

56:                                               ; preds = %42, %36, %30
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @NL80211_MESH_POWER_ACTIVE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* @IEEE80211_FCTL_PM, align 4
  %68 = xor i32 %67, -1
  %69 = call i32 @cpu_to_le16(i32 %68)
  %70 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %81

74:                                               ; preds = %62
  %75 = load i32, i32* @IEEE80211_FCTL_PM, align 4
  %76 = call i32 @cpu_to_le16(i32 %75)
  %77 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %74, %66
  %82 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ieee80211_is_data_qos(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %128

88:                                               ; preds = %81
  %89 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %90 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %89)
  store i32* %90, i32** %8, align 8
  %91 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %92 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @is_unicast_ether_addr(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @NL80211_MESH_POWER_DEEP_SLEEP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %113, label %100

100:                                              ; preds = %96, %88
  %101 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %102 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @is_multicast_ether_addr(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %100
  %107 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %108 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %106, %96
  %114 = load i32, i32* @IEEE80211_QOS_CTL_MESH_PS_LEVEL, align 4
  %115 = ashr i32 %114, 8
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %128

120:                                              ; preds = %106, %100
  %121 = load i32, i32* @IEEE80211_QOS_CTL_MESH_PS_LEVEL, align 4
  %122 = ashr i32 %121, 8
  %123 = xor i32 %122, -1
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %29, %87, %120, %113
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @is_unicast_ether_addr(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
