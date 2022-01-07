; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_mesh_rx_path_sel_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_mesh_rx_path_sel_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ieee802_11_elems = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.sta_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@IEEE80211_MIN_ACTION_SIZE = common dso_local global i32 0, align 4
@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@MPATH_PREQ = common dso_local global i32 0, align 4
@MPATH_PREP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_rx_path_sel_frame(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee802_11_elems, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sta_info*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @IEEE80211_MIN_ACTION_SIZE, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %142

17:                                               ; preds = %3
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %20 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %19, i32 %22)
  store %struct.sta_info* %23, %struct.sta_info** %10, align 8
  %24 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %25 = icmp ne %struct.sta_info* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26, %17
  %35 = call i32 (...) @rcu_read_unlock()
  br label %142

36:                                               ; preds = %26
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %47 = bitcast %struct.ieee80211_mgmt* %46 to i32*
  %48 = ptrtoint i32* %45 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  store i64 %51, i64* %8, align 8
  %52 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = sub i64 %59, %60
  %62 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ieee802_11_parse_elems(i64 %58, i64 %61, i32 0, %struct.ieee802_11_elems* %7, i32 %64, i32* null)
  %66 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %36
  %70 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 37
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %142

74:                                               ; preds = %69
  %75 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %76 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %77 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @MPATH_PREQ, align 4
  %80 = call i64 @hwmp_route_info_get(%struct.ieee80211_sub_if_data* %75, %struct.ieee80211_mgmt* %76, i64 %78, i32 %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %85 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %86 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @hwmp_preq_frame_process(%struct.ieee80211_sub_if_data* %84, %struct.ieee80211_mgmt* %85, i64 %87, i64 %88)
  br label %90

90:                                               ; preds = %83, %74
  br label %91

91:                                               ; preds = %90, %36
  %92 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 31
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %142

100:                                              ; preds = %95
  %101 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %102 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %103 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @MPATH_PREP, align 4
  %106 = call i64 @hwmp_route_info_get(%struct.ieee80211_sub_if_data* %101, %struct.ieee80211_mgmt* %102, i64 %104, i32 %105)
  store i64 %106, i64* %9, align 8
  %107 = load i64, i64* %9, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %111 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %112 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @hwmp_prep_frame_process(%struct.ieee80211_sub_if_data* %110, %struct.ieee80211_mgmt* %111, i64 %113, i64 %114)
  br label %116

116:                                              ; preds = %109, %100
  br label %117

117:                                              ; preds = %116, %91
  %118 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 15
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %142

126:                                              ; preds = %121
  %127 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %128 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %129 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @hwmp_perr_frame_process(%struct.ieee80211_sub_if_data* %127, %struct.ieee80211_mgmt* %128, i64 %130)
  br label %132

132:                                              ; preds = %126, %117
  %133 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %138 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %139 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @hwmp_rann_frame_process(%struct.ieee80211_sub_if_data* %137, %struct.ieee80211_mgmt* %138, i64 %140)
  br label %142

142:                                              ; preds = %16, %34, %73, %99, %125, %136, %132
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee802_11_parse_elems(i64, i64, i32, %struct.ieee802_11_elems*, i32, i32*) #1

declare dso_local i64 @hwmp_route_info_get(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, i32) #1

declare dso_local i32 @hwmp_preq_frame_process(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, i64) #1

declare dso_local i32 @hwmp_prep_frame_process(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, i64) #1

declare dso_local i32 @hwmp_perr_frame_process(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64) #1

declare dso_local i32 @hwmp_rann_frame_process(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
