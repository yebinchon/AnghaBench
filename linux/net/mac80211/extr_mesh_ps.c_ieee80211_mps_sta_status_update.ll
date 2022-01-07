; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_ieee80211_mps_sta_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_ieee80211_mps_sta_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i64, %struct.TYPE_11__, %struct.TYPE_12__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@IEEE80211_STA_ASSOC = common dso_local global i64 0, align 8
@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@NL80211_MESH_POWER_UNKNOWN = common dso_local global i64 0, align 8
@NL80211_MESH_POWER_ACTIVE = common dso_local global i32 0, align 4
@WLAN_STA_MPSP_OWNER = common dso_local global i32 0, align 4
@WLAN_STA_MPSP_RECIPIENT = common dso_local global i32 0, align 4
@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"start PS buffering frames towards %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mps_sta_status_update(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %6 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IEEE80211_STA_ASSOC, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %100

11:                                               ; preds = %1
  %12 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %11
  %20 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_MESH_POWER_UNKNOWN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %19, %11
  %35 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %27
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @NL80211_MESH_POWER_ACTIVE, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 3
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %54 = load i32, i32* @WLAN_STA_MPSP_OWNER, align 4
  %55 = call i32 @clear_sta_flag(%struct.sta_info* %53, i32 %54)
  %56 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %57 = load i32, i32* @WLAN_STA_MPSP_RECIPIENT, align 4
  %58 = call i32 @clear_sta_flag(%struct.sta_info* %56, i32 %57)
  br label %67

59:                                               ; preds = %40
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %64 = load i32, i32* @WLAN_STA_MPSP_OWNER, align 4
  %65 = call i32 @clear_sta_flag(%struct.sta_info* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %59
  br label %67

67:                                               ; preds = %66, %52
  %68 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %69 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %70 = call i32 @test_sta_flag(%struct.sta_info* %68, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %100

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %74
  %78 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %79 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %80 = call i32 @set_sta_flag(%struct.sta_info* %78, i32 %79)
  %81 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %82 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %81, i32 0, i32 2
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = call i32 @atomic_inc(i32* %87)
  %89 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 2
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %93 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @mps_dbg(%struct.TYPE_12__* %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %100

97:                                               ; preds = %74
  %98 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %99 = call i32 @ieee80211_sta_ps_deliver_wakeup(%struct.sta_info* %98)
  br label %100

100:                                              ; preds = %10, %73, %97, %77
  ret void
}

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mps_dbg(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @ieee80211_sta_ps_deliver_wakeup(%struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
