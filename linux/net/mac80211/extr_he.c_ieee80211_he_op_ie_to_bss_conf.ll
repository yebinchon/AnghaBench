; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_he.c_ieee80211_he_op_ie_to_bss_conf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_he.c_ieee80211_he_op_ie_to_bss_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_he_operation }
%struct.ieee80211_he_operation = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_he_op_ie_to_bss_conf(%struct.ieee80211_vif* %0, %struct.ieee80211_he_operation* %1) #0 {
  %3 = alloca %struct.ieee80211_vif*, align 8
  %4 = alloca %struct.ieee80211_he_operation*, align 8
  %5 = alloca %struct.ieee80211_he_operation*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %3, align 8
  store %struct.ieee80211_he_operation* %1, %struct.ieee80211_he_operation** %4, align 8
  %6 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ieee80211_he_operation* %8, %struct.ieee80211_he_operation** %5, align 8
  %9 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %4, align 8
  %10 = icmp ne %struct.ieee80211_he_operation* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %5, align 8
  %13 = call i32 @memset(%struct.ieee80211_he_operation* %12, i32 0, i32 4)
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %4, align 8
  %19 = bitcast %struct.ieee80211_he_operation* %17 to i8*
  %20 = bitcast %struct.ieee80211_he_operation* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  br label %21

21:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_he_operation*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
