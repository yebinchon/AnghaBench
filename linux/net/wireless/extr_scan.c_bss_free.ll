; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_bss_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_bss_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_internal_bss = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cfg80211_bss_ies = type { i32 }

@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_internal_bss*)* @bss_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bss_free(%struct.cfg80211_internal_bss* %0) #0 {
  %2 = alloca %struct.cfg80211_internal_bss*, align 8
  %3 = alloca %struct.cfg80211_bss_ies*, align 8
  store %struct.cfg80211_internal_bss* %0, %struct.cfg80211_internal_bss** %2, align 8
  %4 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %2, align 8
  %5 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %4, i32 0, i32 2
  %6 = call i32 @atomic_read(i32* %5)
  %7 = call i64 @WARN_ON(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %56

10:                                               ; preds = %1
  %11 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %2, align 8
  %12 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @rcu_access_pointer(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.cfg80211_bss_ies*
  store %struct.cfg80211_bss_ies* %17, %struct.cfg80211_bss_ies** %3, align 8
  %18 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %3, align 8
  %19 = icmp ne %struct.cfg80211_bss_ies* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %10
  %21 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %2, align 8
  %22 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %3, align 8
  %28 = load i32, i32* @rcu_head, align 4
  %29 = call i32 @kfree_rcu(%struct.cfg80211_bss_ies* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %20, %10
  %31 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %2, align 8
  %32 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @rcu_access_pointer(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = bitcast i8* %36 to %struct.cfg80211_bss_ies*
  store %struct.cfg80211_bss_ies* %37, %struct.cfg80211_bss_ies** %3, align 8
  %38 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %3, align 8
  %39 = icmp ne %struct.cfg80211_bss_ies* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %3, align 8
  %42 = load i32, i32* @rcu_head, align 4
  %43 = call i32 @kfree_rcu(%struct.cfg80211_bss_ies* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %30
  %45 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %2, align 8
  %46 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %45, i32 0, i32 0
  %47 = call i32 @list_empty(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %2, align 8
  %51 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %50, i32 0, i32 0
  %52 = call i32 @list_del(i32* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %2, align 8
  %55 = call i32 @kfree(%struct.cfg80211_internal_bss* %54)
  br label %56

56:                                               ; preds = %53, %9
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i32 @kfree_rcu(%struct.cfg80211_bss_ies*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.cfg80211_internal_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
