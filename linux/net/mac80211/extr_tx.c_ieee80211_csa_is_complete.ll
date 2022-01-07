; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_csa_is_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_csa_is_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_if_mesh, %struct.ieee80211_if_ibss, %struct.ieee80211_if_ap }
%struct.ieee80211_if_mesh = type { i32 }
%struct.ieee80211_if_ibss = type { i32 }
%struct.ieee80211_if_ap = type { i32 }
%struct.beacon_data = type { i32*, i64, i32*, i64, i64* }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_csa_is_complete(%struct.ieee80211_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_vif*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.beacon_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_if_ap*, align 8
  %10 = alloca %struct.ieee80211_if_ibss*, align 8
  %11 = alloca %struct.ieee80211_if_mesh*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %3, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %13 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %12)
  store %struct.ieee80211_sub_if_data* %13, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.beacon_data* null, %struct.beacon_data** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %15 = call i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %141

18:                                               ; preds = %1
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %18
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store %struct.ieee80211_if_ap* %28, %struct.ieee80211_if_ap** %9, align 8
  %29 = load %struct.ieee80211_if_ap*, %struct.ieee80211_if_ap** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_if_ap, %struct.ieee80211_if_ap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.beacon_data* @rcu_dereference(i32 %31)
  store %struct.beacon_data* %32, %struct.beacon_data** %5, align 8
  %33 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %34 = icmp ne %struct.beacon_data* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %37 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %25
  %42 = phi i1 [ true, %25 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %138

47:                                               ; preds = %41
  %48 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %49 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %6, align 8
  %51 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %52 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  br label %106

54:                                               ; preds = %18
  %55 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store %struct.ieee80211_if_ibss* %63, %struct.ieee80211_if_ibss** %10, align 8
  %64 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %10, align 8
  %65 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.beacon_data* @rcu_dereference(i32 %66)
  store %struct.beacon_data* %67, %struct.beacon_data** %5, align 8
  %68 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %69 = icmp ne %struct.beacon_data* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  br label %138

71:                                               ; preds = %60
  %72 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %73 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %6, align 8
  %75 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %76 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %7, align 8
  br label %105

78:                                               ; preds = %54
  %79 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %80 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %78
  %85 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %87, %struct.ieee80211_if_mesh** %11, align 8
  %88 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %11, align 8
  %89 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.beacon_data* @rcu_dereference(i32 %90)
  store %struct.beacon_data* %91, %struct.beacon_data** %5, align 8
  %92 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %93 = icmp ne %struct.beacon_data* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  br label %138

95:                                               ; preds = %84
  %96 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %97 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %6, align 8
  %99 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %100 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %7, align 8
  br label %104

102:                                              ; preds = %78
  %103 = call i64 @WARN_ON(i32 1)
  br label %138

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %71
  br label %106

106:                                              ; preds = %105, %47
  %107 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %108 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %107, i32 0, i32 4
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %106
  br label %138

114:                                              ; preds = %106
  %115 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %116 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %115, i32 0, i32 4
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = icmp ugt i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @WARN_ON_ONCE(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %138

126:                                              ; preds = %114
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %129 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %128, i32 0, i32 4
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %127, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  store i32 1, i32* %8, align 4
  br label %137

137:                                              ; preds = %136, %126
  br label %138

138:                                              ; preds = %137, %125, %113, %102, %94, %70, %46
  %139 = call i32 (...) @rcu_read_unlock()
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %138, %17
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.beacon_data* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
