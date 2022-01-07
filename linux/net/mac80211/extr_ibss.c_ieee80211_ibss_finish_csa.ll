; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ibss.c_ieee80211_ibss_finish_csa.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ibss.c_ieee80211_ibss_finish_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_if_ibss }
%struct.ieee80211_if_ibss = type { %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.cfg80211_bss = type { i32 }

@IEEE80211_BSS_TYPE_IBSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_ibss_finish_csa(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_if_ibss*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.ieee80211_if_ibss* %10, %struct.ieee80211_if_ibss** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %11)
  %13 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @is_zero_ether_addr(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %1
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IEEE80211_BSS_TYPE_IBSS, align 4
  %39 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IEEE80211_PRIVACY(i32 %41)
  %43 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %24, i32 %28, i32 %31, i32 %34, i32 %37, i32 %38, i32 %42)
  store %struct.cfg80211_bss* %43, %struct.cfg80211_bss** %5, align 8
  %44 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %45 = icmp ne %struct.cfg80211_bss* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %18
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %52 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %60 = call i32 @cfg80211_put_bss(i32 %58, %struct.cfg80211_bss* %59)
  br label %61

61:                                               ; preds = %46, %18
  br label %62

62:                                               ; preds = %61, %1
  %63 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %4, align 8
  %64 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %63, i32 0, i32 0
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %65, i32 0, i32 0
  %67 = bitcast %struct.TYPE_8__* %64 to i8*
  %68 = bitcast %struct.TYPE_8__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 8 %68, i64 4, i1 false)
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %70 = call i32 @ieee80211_ibss_csa_beacon(%struct.ieee80211_sub_if_data* %69, i32* null)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %62
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %73
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IEEE80211_PRIVACY(i32) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_ibss_csa_beacon(%struct.ieee80211_sub_if_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
