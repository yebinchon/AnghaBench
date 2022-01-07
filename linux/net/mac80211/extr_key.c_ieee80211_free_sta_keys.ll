; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_free_sta_keys.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_free_sta_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32*, i32* }
%struct.ieee80211_key = type { %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NUM_DEFAULT_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_free_sta_keys(%struct.ieee80211_local* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.ieee80211_key*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %56, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %10
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %19 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local* %18, i32 %25)
  store %struct.ieee80211_key* %26, %struct.ieee80211_key** %5, align 8
  %27 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %28 = icmp ne %struct.ieee80211_key* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %56

30:                                               ; preds = %17
  %31 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %44 = call i32 @ieee80211_key_replace(%struct.TYPE_6__* %33, i32 %36, i32 %42, %struct.ieee80211_key* %43, i32* null)
  %45 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %46 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @__ieee80211_key_destroy(%struct.ieee80211_key* %45, i32 %54)
  br label %56

56:                                               ; preds = %30, %29
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %10

59:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %103, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @NUM_DEFAULT_KEYS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %106

64:                                               ; preds = %60
  %65 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %66 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local* %65, i32 %72)
  store %struct.ieee80211_key* %73, %struct.ieee80211_key** %5, align 8
  %74 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %75 = icmp ne %struct.ieee80211_key* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %64
  br label %103

77:                                               ; preds = %64
  %78 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %91 = call i32 @ieee80211_key_replace(%struct.TYPE_6__* %80, i32 %83, i32 %89, %struct.ieee80211_key* %90, i32* null)
  %92 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %93 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %94 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @__ieee80211_key_destroy(%struct.ieee80211_key* %92, i32 %101)
  br label %103

103:                                              ; preds = %77, %76
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %60

106:                                              ; preds = %60
  %107 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %108 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_key_replace(%struct.TYPE_6__*, i32, i32, %struct.ieee80211_key*, i32*) #1

declare dso_local i32 @__ieee80211_key_destroy(%struct.ieee80211_key*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
