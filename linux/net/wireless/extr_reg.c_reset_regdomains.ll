; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reset_regdomains.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reset_regdomains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32 }

@cfg80211_world_regdom = common dso_local global %struct.ieee80211_regdomain* null, align 8
@world_regdom = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@cfg80211_regdomain = common dso_local global i32 0, align 4
@core_request_world = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ieee80211_regdomain*)* @reset_regdomains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_regdomains(i32 %0, %struct.ieee80211_regdomain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ieee80211_regdomain* %1, %struct.ieee80211_regdomain** %4, align 8
  %6 = call i32 (...) @ASSERT_RTNL()
  %7 = call %struct.ieee80211_regdomain* (...) @get_cfg80211_regdom()
  store %struct.ieee80211_regdomain* %7, %struct.ieee80211_regdomain** %5, align 8
  %8 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %9 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** @cfg80211_world_regdom, align 8
  %10 = icmp eq %struct.ieee80211_regdomain* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %5, align 8
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** @cfg80211_world_regdom, align 8
  %14 = icmp eq %struct.ieee80211_regdomain* %13, @world_regdom
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** @cfg80211_world_regdom, align 8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %18 = icmp eq %struct.ieee80211_regdomain* %17, @world_regdom
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %5, align 8
  br label %20

20:                                               ; preds = %19, %16
  %21 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %22 = call i32 @rcu_free_regdom(%struct.ieee80211_regdomain* %21)
  %23 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** @cfg80211_world_regdom, align 8
  %24 = call i32 @rcu_free_regdom(%struct.ieee80211_regdomain* %23)
  store %struct.ieee80211_regdomain* @world_regdom, %struct.ieee80211_regdomain** @cfg80211_world_regdom, align 8
  %25 = load i32, i32* @cfg80211_regdomain, align 4
  %26 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %27 = call i32 @rcu_assign_pointer(i32 %25, %struct.ieee80211_regdomain* %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %33

31:                                               ; preds = %20
  %32 = call i32 @reg_update_last_request(i32* @core_request_world)
  br label %33

33:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.ieee80211_regdomain* @get_cfg80211_regdom(...) #1

declare dso_local i32 @rcu_free_regdom(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_regdomain*) #1

declare dso_local i32 @reg_update_last_request(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
