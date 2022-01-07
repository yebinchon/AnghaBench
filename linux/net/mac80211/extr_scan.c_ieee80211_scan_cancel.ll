; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@SCAN_HW_SCANNING = common dso_local global i32 0, align 4
@SCAN_COMPLETED = common dso_local global i32 0, align 4
@SCAN_HW_CANCELLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_scan_cancel(%struct.ieee80211_local* %0) #0 {
  %2 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %2, align 8
  %3 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %66

11:                                               ; preds = %1
  %12 = load i32, i32* @SCAN_HW_SCANNING, align 4
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 6
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load i32, i32* @SCAN_COMPLETED, align 4
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 6
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* @SCAN_HW_CANCELLED, align 4
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 6
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  br label %66

28:                                               ; preds = %17, %11
  %29 = load i32, i32* @SCAN_HW_SCANNING, align 4
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 6
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load i32, i32* @SCAN_HW_CANCELLED, align 4
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 6
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  %39 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %40 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %39, i32 0, i32 5
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %47 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %48 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %50, i32 0, i32 0
  %52 = call i32 @lockdep_is_held(i32* %51)
  %53 = call i32 @rcu_dereference_protected(i32 %49, i32 %52)
  %54 = call i32 @drv_cancel_hw_scan(%struct.ieee80211_local* %46, i32 %53)
  br label %55

55:                                               ; preds = %45, %34
  br label %66

56:                                               ; preds = %28
  %57 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %58 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %57, i32 0, i32 3
  %59 = call i32 @cancel_delayed_work(i32* %58)
  %60 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %60, i32 0, i32 2
  %62 = call i32 @memset(i32* %61, i32 0, i32 4)
  %63 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %64 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %63, i32 0, i32 1
  %65 = call i32 @__ieee80211_scan_completed(i32* %64, i32 1)
  br label %66

66:                                               ; preds = %56, %55, %23, %10
  %67 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %68 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @drv_cancel_hw_scan(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @__ieee80211_scan_completed(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
