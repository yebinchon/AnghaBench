; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_wiphy_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_wiphy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i64, i64, i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@WIPHY_PARAM_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WIPHY_PARAM_COVERAGE_CLASS = common dso_local global i32 0, align 4
@WIPHY_PARAM_DYN_ACK = common dso_local global i32 0, align 4
@WIPHY_PARAM_RTS_THRESHOLD = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_SHORT = common dso_local global i32 0, align 4
@IEEE80211_MAX_TX_RETRY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_LONG = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@WIPHY_PARAM_TXQ_LIMIT = common dso_local global i32 0, align 4
@WIPHY_PARAM_TXQ_MEMORY_LIMIT = common dso_local global i32 0, align 4
@WIPHY_PARAM_TXQ_QUANTUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i32)* @ieee80211_set_wiphy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_wiphy_params(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %9)
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @WIPHY_PARAM_FRAG_THRESHOLD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %17 = call i32 @ieee80211_check_fast_xmit_all(%struct.ieee80211_local* %16)
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %19 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %20 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @drv_set_frag_threshold(%struct.ieee80211_local* %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %27 = call i32 @ieee80211_check_fast_xmit_all(%struct.ieee80211_local* %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %144

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @WIPHY_PARAM_COVERAGE_CLASS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @WIPHY_PARAM_DYN_ACK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @WIPHY_PARAM_COVERAGE_CLASS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %47 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %48, %45 ], [ -1, %49 ]
  store i32 %51, i32* %8, align 4
  %52 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @drv_set_coverage_class(%struct.ieee80211_local* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %144

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @WIPHY_PARAM_RTS_THRESHOLD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %67 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %68 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @drv_set_rts_threshold(%struct.ieee80211_local* %66, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %144

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %60
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @WIPHY_PARAM_RETRY_SHORT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %83 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IEEE80211_MAX_TX_RETRY, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %144

90:                                               ; preds = %81
  %91 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %92 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %95 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i64 %93, i64* %97, align 8
  br label %98

98:                                               ; preds = %90, %76
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %105 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @IEEE80211_MAX_TX_RETRY, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %144

112:                                              ; preds = %103
  %113 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %114 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %117 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i64 %115, i64* %119, align 8
  br label %120

120:                                              ; preds = %112, %98
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @WIPHY_PARAM_RETRY_SHORT, align 4
  %123 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %129 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %130 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %120
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @WIPHY_PARAM_TXQ_LIMIT, align 4
  %134 = load i32, i32* @WIPHY_PARAM_TXQ_MEMORY_LIMIT, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @WIPHY_PARAM_TXQ_QUANTUM, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %132, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %142 = call i32 @ieee80211_txq_set_params(%struct.ieee80211_local* %141)
  br label %143

143:                                              ; preds = %140, %131
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %109, %87, %73, %57, %25
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @ieee80211_check_fast_xmit_all(%struct.ieee80211_local*) #1

declare dso_local i32 @drv_set_frag_threshold(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @drv_set_coverage_class(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @drv_set_rts_threshold(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_txq_set_params(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
