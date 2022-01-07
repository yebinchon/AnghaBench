; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_iface.c___ieee80211_recalc_idle.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_iface.c___ieee80211_recalc_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SCAN_SW_SCANNING = common dso_local global i32 0, align 4
@SCAN_ONCHANNEL_SCANNING = common dso_local global i32 0, align 4
@IEEE80211_TPT_LEDTRIG_FL_WORK = common dso_local global i32 0, align 4
@IEEE80211_TPT_LEDTRIG_FL_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, i32)* @__ieee80211_recalc_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ieee80211_recalc_idle(%struct.ieee80211_local* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 5
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 4
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %16, %2
  %27 = phi i1 [ true, %16 ], [ true, %2 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 1
  %38 = call i32 @list_empty(i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %26
  %42 = phi i1 [ false, %26 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @SCAN_SW_SCANNING, align 4
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %45, i32 0, i32 0
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @SCAN_ONCHANNEL_SCANNING, align 4
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %51, i32 0, i32 0
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %49, %41
  %56 = phi i1 [ true, %41 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60, %55
  %64 = load i32, i32* @IEEE80211_TPT_LEDTRIG_FL_WORK, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @IEEE80211_TPT_LEDTRIG_FL_WORK, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @IEEE80211_TPT_LEDTRIG_FL_CONNECTED, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @IEEE80211_TPT_LEDTRIG_FL_CONNECTED, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @ieee80211_mod_tpt_led_trig(%struct.ieee80211_local* %83, i32 %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92, %89, %82
  %96 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %97 = call i32 @__ieee80211_idle_off(%struct.ieee80211_local* %96)
  store i32 %97, i32* %3, align 4
  br label %101

98:                                               ; preds = %92
  %99 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %100 = call i32 @__ieee80211_idle_on(%struct.ieee80211_local* %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_mod_tpt_led_trig(%struct.ieee80211_local*, i32, i32) #1

declare dso_local i32 @__ieee80211_idle_off(%struct.ieee80211_local*) #1

declare dso_local i32 @__ieee80211_idle_on(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
