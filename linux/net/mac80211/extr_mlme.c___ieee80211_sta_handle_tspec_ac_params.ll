; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c___ieee80211_sta_handle_tspec_ac_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c___ieee80211_sta_handle_tspec_ac_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, i32*, %struct.TYPE_3__, %struct.ieee80211_local* }
%struct.TYPE_3__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, %struct.ieee80211_sta_tx_tspec* }
%struct.ieee80211_sta_tx_tspec = type { i32, i64, i32, i64, i64 }
%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"failed to set TX queue parameters for queue %d\0A\00", align 1
@IEEE80211_AC_BK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*)* @__ieee80211_sta_handle_tspec_ac_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ieee80211_sta_handle_tspec_ac_params(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_if_managed*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta_tx_tspec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 3
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %4, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.ieee80211_if_managed* %16, %struct.ieee80211_if_managed** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %172

24:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %167, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %170

29:                                               ; preds = %25
  %30 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %30, i32 0, i32 1
  %32 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %32, i64 %34
  store %struct.ieee80211_sta_tx_tspec* %35, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %36 = load i64, i64* @jiffies, align 8
  store i64 %36, i64* %10, align 8
  %37 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 129
  br i1 %40, label %41, label %69

41:                                               ; preds = %29
  %42 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HZ, align 8
  %52 = add i64 %50, %51
  %53 = call i64 @time_after(i64 %47, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %46
  %56 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %66, i32 0, i32 0
  store i32 128, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %55
  br label %69

69:                                               ; preds = %68, %46, %41, %29
  %70 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %166 [
    i32 128, label %73
    i32 130, label %94
    i32 129, label %165
  ]

73:                                               ; preds = %69
  %74 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %75 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @drv_conf_tx(%struct.ieee80211_local* %74, %struct.ieee80211_sub_if_data* %75, i32 %76, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %73
  %86 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @sdata_err(%struct.ieee80211_sub_if_data* %86, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %73
  %90 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %90, i32 0, i32 0
  store i32 129, i32* %91, align 8
  %92 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %92, i32 0, i32 2
  store i32 0, i32* %93, align 8
  store i32 1, i32* %6, align 4
  br label %166

94:                                               ; preds = %69
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %97 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @HZ, align 8
  %100 = add i64 %98, %99
  %101 = call i64 @time_after(i64 %95, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %104, i32 0, i32 0
  store i32 129, i32* %105, align 8
  store i32 1, i32* %6, align 4
  br label %166

106:                                              ; preds = %94
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %125, %106
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = mul nsw i32 2, %117
  %119 = sub nsw i32 7, %118
  %120 = call i32 @BIT(i32 %119)
  %121 = and i32 %116, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %113
  br label %128

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %109

128:                                              ; preds = %123, %109
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @IEEE80211_AC_BK, align 4
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %132, %128
  %135 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %136 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %139 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = call i32 @drv_conf_tx(%struct.ieee80211_local* %135, %struct.ieee80211_sub_if_data* %136, i32 %137, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %134
  %147 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @sdata_err(%struct.ieee80211_sub_if_data* %147, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %146, %134
  %151 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %152 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %151, i32 0, i32 0
  store i32 129, i32* %152, align 8
  store i32 1, i32* %6, align 4
  %153 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %154 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %153, i32 0, i32 0
  %155 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %8, align 8
  %156 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @HZ, align 8
  %159 = add i64 %157, %158
  %160 = load i64, i64* %10, align 8
  %161 = sub i64 %159, %160
  %162 = add i64 %161, 1
  %163 = trunc i64 %162 to i32
  %164 = call i32 @schedule_delayed_work(i32* %154, i32 %163)
  br label %166

165:                                              ; preds = %69
  br label %166

166:                                              ; preds = %69, %165, %150, %103, %89
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %25

170:                                              ; preds = %25
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %170, %23
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @drv_conf_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, i32*) #1

declare dso_local i32 @sdata_err(%struct.ieee80211_sub_if_data*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
