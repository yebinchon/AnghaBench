; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_mesh_matches_local.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_mesh_matches_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_11__, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.ieee802_11_elems = type { i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }
%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_supported_band = type { i32 }

@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_matches_local(%struct.ieee80211_sub_if_data* %0, %struct.ieee802_11_elems* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee802_11_elems*, align 8
  %6 = alloca %struct.ieee80211_if_mesh*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cfg80211_chan_def, align 4
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee802_11_elems* %1, %struct.ieee802_11_elems** %5, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %12, %struct.ieee80211_if_mesh** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %17 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %25 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %28 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @memcmp(i32 %23, i32 %26, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %82

32:                                               ; preds = %20
  %33 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %37 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %32
  %43 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %47 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %45, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %42
  %53 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %57 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %52
  %63 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %67 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %65, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %77 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %75, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %72, %62, %52, %42, %32, %20, %2
  store i32 0, i32* %3, align 4
  br label %136

83:                                               ; preds = %72
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %85 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %84)
  store %struct.ieee80211_supported_band* %85, %struct.ieee80211_supported_band** %9, align 8
  %86 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %87 = icmp ne %struct.ieee80211_supported_band* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %136

89:                                               ; preds = %83
  %90 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %91 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %92 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %93 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ieee80211_sta_get_rates(%struct.ieee80211_sub_if_data* %90, %struct.ieee802_11_elems* %91, i32 %94, i64* %7)
  %96 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %97 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %136

104:                                              ; preds = %89
  %105 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %106 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %112 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %8, i32 %110, i32 %111)
  %113 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %114 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ieee80211_chandef_ht_oper(i32 %115, %struct.cfg80211_chan_def* %8)
  %117 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %122 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %125 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ieee80211_chandef_vht_oper(i32* %120, i32 %123, i32 %126, %struct.cfg80211_chan_def* %8)
  %128 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = call i32 @cfg80211_chandef_compatible(%struct.TYPE_12__* %131, %struct.cfg80211_chan_def* %8)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %136

135:                                              ; preds = %104
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %134, %103, %88, %82
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_sta_get_rates(%struct.ieee80211_sub_if_data*, %struct.ieee802_11_elems*, i32, i64*) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i32 @ieee80211_chandef_ht_oper(i32, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @ieee80211_chandef_vht_oper(i32*, i32, i32, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_compatible(%struct.TYPE_12__*, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
