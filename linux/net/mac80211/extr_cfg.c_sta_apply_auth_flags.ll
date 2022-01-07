; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_sta_apply_auth_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_sta_apply_auth_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32 }

@NL80211_STA_FLAG_AUTHENTICATED = common dso_local global i32 0, align 4
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@WLAN_STA_RATE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTHORIZED = common dso_local global i32 0, align 4
@WLAN_STA_AUTHORIZED = common dso_local global i32 0, align 4
@IEEE80211_STA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.sta_info*, i32, i32)* @sta_apply_auth_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_apply_auth_flags(%struct.ieee80211_local* %0, %struct.sta_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %24 = load i32, i32* @WLAN_STA_AUTH, align 4
  %25 = call i64 @test_sta_flag(%struct.sta_info* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %29 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %30 = call i32 @sta_info_move_state(%struct.sta_info* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %156

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %22, %16, %4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %42
  %49 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %50 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %51 = call i64 @test_sta_flag(%struct.sta_info* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %48
  %54 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %55 = load i32, i32* @WLAN_STA_RATE_CONTROL, align 4
  %56 = call i64 @test_sta_flag(%struct.sta_info* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %60 = call i32 @rate_control_rate_init(%struct.sta_info* %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %63 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %64 = call i32 @sta_info_move_state(%struct.sta_info* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %156

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %48, %42, %36
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %84 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %85 = call i32 @sta_info_move_state(%struct.sta_info* %83, i32 %84)
  store i32 %85, i32* %10, align 4
  br label %97

86:                                               ; preds = %76
  %87 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %88 = load i32, i32* @WLAN_STA_AUTHORIZED, align 4
  %89 = call i64 @test_sta_flag(%struct.sta_info* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %93 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %94 = call i32 @sta_info_move_state(%struct.sta_info* %92, i32 %93)
  store i32 %94, i32* %10, align 4
  br label %96

95:                                               ; preds = %86
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %95, %91
  br label %97

97:                                               ; preds = %96, %82
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %156

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %70
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %106 = call i32 @BIT(i32 %105)
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %112 = call i32 @BIT(i32 %111)
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %129, label %115

115:                                              ; preds = %109
  %116 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %117 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %118 = call i64 @test_sta_flag(%struct.sta_info* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %122 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %123 = call i32 @sta_info_move_state(%struct.sta_info* %121, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %5, align 4
  br label %156

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %115, %109, %103
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %132 = call i32 @BIT(i32 %131)
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %129
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %138 = call i32 @BIT(i32 %137)
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %135
  %142 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %143 = load i32, i32* @WLAN_STA_AUTH, align 4
  %144 = call i64 @test_sta_flag(%struct.sta_info* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %148 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %149 = call i32 @sta_info_move_state(%struct.sta_info* %147, i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %5, align 4
  br label %156

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %141, %135, %129
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %155, %152, %126, %100, %67, %33
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @sta_info_move_state(%struct.sta_info*, i32) #1

declare dso_local i32 @rate_control_rate_init(%struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
