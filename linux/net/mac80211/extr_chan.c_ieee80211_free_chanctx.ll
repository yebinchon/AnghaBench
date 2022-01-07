; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_free_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_free_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.ieee80211_chanctx = type { i32 }

@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_chanctx*)* @ieee80211_free_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_free_chanctx(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %4, align 8
  %5 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %5, i32 0, i32 0
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %9 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %10 = call i64 @ieee80211_chanctx_refcount(%struct.ieee80211_local* %8, %struct.ieee80211_chanctx* %9)
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %14, i32 0, i32 0
  %16 = call i32 @list_del_rcu(i32* %15)
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %18 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %19 = call i32 @ieee80211_del_chanctx(%struct.ieee80211_local* %17, %struct.ieee80211_chanctx* %18)
  %20 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %21 = load i32, i32* @rcu_head, align 4
  %22 = call i32 @kfree_rcu(%struct.ieee80211_chanctx* %20, i32 %21)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ieee80211_chanctx_refcount(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @ieee80211_del_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @kfree_rcu(%struct.ieee80211_chanctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
