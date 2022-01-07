; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_dfs_domain_same.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_dfs_domain_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_regdomain = type { i64 }

@cfg80211_regdomain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_dfs_domain_same(%struct.wiphy* %0, %struct.wiphy* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca %struct.ieee80211_regdomain*, align 8
  %7 = alloca %struct.ieee80211_regdomain*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.wiphy* %1, %struct.wiphy** %4, align 8
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %5, align 8
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %6, align 8
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %7, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load i32, i32* @cfg80211_regdomain, align 4
  %11 = call %struct.ieee80211_regdomain* @rcu_dereference(i32 %10)
  store %struct.ieee80211_regdomain* %11, %struct.ieee80211_regdomain** %7, align 8
  %12 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %13 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ieee80211_regdomain* @rcu_dereference(i32 %14)
  store %struct.ieee80211_regdomain* %15, %struct.ieee80211_regdomain** %5, align 8
  %16 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %17 = icmp ne %struct.ieee80211_regdomain* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  store %struct.ieee80211_regdomain* %19, %struct.ieee80211_regdomain** %5, align 8
  br label %20

20:                                               ; preds = %18, %2
  %21 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %22 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ieee80211_regdomain* @rcu_dereference(i32 %23)
  store %struct.ieee80211_regdomain* %24, %struct.ieee80211_regdomain** %6, align 8
  %25 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %26 = icmp ne %struct.ieee80211_regdomain* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  store %struct.ieee80211_regdomain* %28, %struct.ieee80211_regdomain** %6, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32, i32* %8, align 4
  ret i32 %39
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
