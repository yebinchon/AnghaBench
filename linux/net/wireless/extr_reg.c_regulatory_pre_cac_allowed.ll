; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regulatory_pre_cac_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regulatory_pre_cac_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_regdomain = type { i64 }

@cfg80211_regdomain = common dso_local global i32 0, align 4
@NL80211_DFS_ETSI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulatory_pre_cac_allowed(%struct.wiphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %4, align 8
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load i32, i32* @cfg80211_regdomain, align 4
  %9 = call %struct.ieee80211_regdomain* @rcu_dereference(i32 %8)
  store %struct.ieee80211_regdomain* %9, %struct.ieee80211_regdomain** %4, align 8
  %10 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %11 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ieee80211_regdomain* @rcu_dereference(i32 %12)
  store %struct.ieee80211_regdomain* %13, %struct.ieee80211_regdomain** %5, align 8
  %14 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %15 = icmp ne %struct.ieee80211_regdomain* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_DFS_ETSI, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %44

26:                                               ; preds = %1
  %27 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_DFS_ETSI, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %34, %26
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %23
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_regdomain* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
