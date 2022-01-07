; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_ieee80211_mpsp_trigger_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_ieee80211_mpsp_trigger_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_QOS_CTL_RSPI = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_EOSP = common dso_local global i32 0, align 4
@WLAN_STA_MPSP_RECIPIENT = common dso_local global i32 0, align 4
@WLAN_STA_MPSP_OWNER = common dso_local global i32 0, align 4
@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@NL80211_MESH_POWER_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mpsp_trigger_process(i32* %0, %struct.sta_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IEEE80211_QOS_CTL_RSPI, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %13, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_QOS_CTL_EOSP, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %32 = load i32, i32* @WLAN_STA_MPSP_RECIPIENT, align 4
  %33 = call i32 @set_sta_flag(%struct.sta_info* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %27, %24
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = load i32, i32* @WLAN_STA_MPSP_OWNER, align 4
  %40 = call i32 @clear_sta_flag(%struct.sta_info* %38, i32 %39)
  br label %58

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %46 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %47 = call i64 @test_sta_flag(%struct.sta_info* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %51 = load i32, i32* @WLAN_STA_MPSP_OWNER, align 4
  %52 = call i32 @test_and_set_sta_flag(%struct.sta_info* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %56 = call i32 @mps_frame_deliver(%struct.sta_info* %55, i32 -1)
  br label %57

57:                                               ; preds = %54, %49, %44, %41
  br label %58

58:                                               ; preds = %57, %37
  br label %91

59:                                               ; preds = %4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %64 = load i32, i32* @WLAN_STA_MPSP_RECIPIENT, align 4
  %65 = call i32 @clear_sta_flag(%struct.sta_info* %63, i32 %64)
  br label %79

66:                                               ; preds = %59
  %67 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NL80211_MESH_POWER_ACTIVE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %76 = load i32, i32* @WLAN_STA_MPSP_RECIPIENT, align 4
  %77 = call i32 @set_sta_flag(%struct.sta_info* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %66
  br label %79

79:                                               ; preds = %78, %62
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %84 = load i32, i32* @WLAN_STA_MPSP_OWNER, align 4
  %85 = call i32 @test_and_set_sta_flag(%struct.sta_info* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %89 = call i32 @mps_frame_deliver(%struct.sta_info* %88, i32 -1)
  br label %90

90:                                               ; preds = %87, %82, %79
  br label %91

91:                                               ; preds = %90, %58
  ret void
}

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @test_and_set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @mps_frame_deliver(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
