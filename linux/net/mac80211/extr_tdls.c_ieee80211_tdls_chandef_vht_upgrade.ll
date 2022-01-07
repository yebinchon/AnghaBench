; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_chandef_vht_upgrade.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_chandef_vht_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sta_info = type { %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@__const.ieee80211_tdls_chandef_vht_upgrade.centers_80mhz = private unnamed_addr constant [6 x i32] [i32 5210, i32 5290, i32 5530, i32 5610, i32 5690, i32 5775], align 16
@NL80211_CHAN_WIDTH_5 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_10 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"TDLS ch width upgraded %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sta_info*)* @ieee80211_tdls_chandef_vht_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tdls_chandef_vht_upgrade(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca %struct.cfg80211_chan_def, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %9 = bitcast [6 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([6 x i32]* @__const.ieee80211_tdls_chandef_vht_upgrade.centers_80mhz to i8*), i64 24, i1 false)
  %10 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 0
  %12 = bitcast %struct.cfg80211_chan_def* %6 to i8*
  %13 = bitcast %struct.cfg80211_chan_def* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  %14 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %15 = call i32 @ieee80211_sta_cap_chan_bw(%struct.sta_info* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @NL80211_CHAN_WIDTH_5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NL80211_CHAN_WIDTH_10, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %2
  br label %126

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp uge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %126

36:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %64, %36
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %6, i32 0, i32 3
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %46, %50
  %52 = call i32 @abs(i32 %51) #4
  %53 = icmp sle i32 %52, 30
  br i1 %53, label %54, label %63

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %6, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %6, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  %62 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %6, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  br label %67

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %37

67:                                               ; preds = %54, %37
  %68 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %126

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %104, %72
  %74 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp ugt i32 %75, %76
  br i1 %77, label %102, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %6, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %82 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %80, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %78
  %87 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %94 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @cfg80211_reg_can_beacon_relax(i32 %92, %struct.cfg80211_chan_def* %6, i32 %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %86, %78
  %101 = phi i1 [ false, %78 ], [ %99, %86 ]
  br label %102

102:                                              ; preds = %100, %73
  %103 = phi i1 [ true, %73 ], [ %101, %100 ]
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = call i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def* %6)
  br label %73

106:                                              ; preds = %102
  %107 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %108 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %107, i32 0, i32 0
  %109 = call i32 @cfg80211_chandef_identical(%struct.cfg80211_chan_def* %6, %struct.cfg80211_chan_def* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %106
  %112 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %113 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %114 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %6, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = call i32 @tdls_dbg(%struct.ieee80211_sub_if_data* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %117, i64 %120)
  %122 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %123 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %122, i32 0, i32 0
  %124 = bitcast %struct.cfg80211_chan_def* %123 to i8*
  %125 = bitcast %struct.cfg80211_chan_def* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 24, i1 false)
  br label %126

126:                                              ; preds = %23, %35, %71, %111, %106
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ieee80211_sta_cap_chan_bw(%struct.sta_info*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @cfg80211_reg_can_beacon_relax(i32, %struct.cfg80211_chan_def*, i32) #2

declare dso_local i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def*) #2

declare dso_local i32 @cfg80211_chandef_identical(%struct.cfg80211_chan_def*, %struct.cfg80211_chan_def*) #2

declare dso_local i32 @tdls_dbg(%struct.ieee80211_sub_if_data*, i8*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
