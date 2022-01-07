; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_led.c_ieee80211_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_led.c_ieee80211_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32*, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@ieee80211_rx_led_activate = common dso_local global i32 0, align 4
@ieee80211_rx_led_deactivate = common dso_local global i32 0, align 4
@ieee80211_tx_led_activate = common dso_local global i32 0, align 4
@ieee80211_tx_led_deactivate = common dso_local global i32 0, align 4
@ieee80211_assoc_led_activate = common dso_local global i32 0, align 4
@ieee80211_assoc_led_deactivate = common dso_local global i32 0, align 4
@ieee80211_radio_led_activate = common dso_local global i32 0, align 4
@ieee80211_radio_led_deactivate = common dso_local global i32 0, align 4
@ieee80211_tpt_led_activate = common dso_local global i32 0, align 4
@ieee80211_tpt_led_deactivate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_led_init(%struct.ieee80211_local* %0) #0 {
  %2 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %2, align 8
  %3 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %3, i32 0, i32 10
  %5 = call i32 @atomic_set(i32* %4, i32 0)
  %6 = load i32, i32* @ieee80211_rx_led_activate, align 4
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 9
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 %6, i32* %9, align 4
  %10 = load i32, i32* @ieee80211_rx_led_deactivate, align 4
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 9
  %22 = call i64 @led_trigger_register(%struct.TYPE_2__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %24, %19, %1
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 8
  %36 = call i32 @atomic_set(i32* %35, i32 0)
  %37 = load i32, i32* @ieee80211_tx_led_activate, align 4
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @ieee80211_tx_led_deactivate, align 4
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %46 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %33
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %52 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %51, i32 0, i32 7
  %53 = call i64 @led_trigger_register(%struct.TYPE_2__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %57 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %62 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %55, %50, %33
  %65 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %66 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %65, i32 0, i32 6
  %67 = call i32 @atomic_set(i32* %66, i32 0)
  %68 = load i32, i32* @ieee80211_assoc_led_activate, align 4
  %69 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %70 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @ieee80211_assoc_led_deactivate, align 4
  %73 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %74 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %77 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %64
  %82 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %83 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %82, i32 0, i32 5
  %84 = call i64 @led_trigger_register(%struct.TYPE_2__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %88 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @kfree(i32* %90)
  %92 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %93 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %86, %81, %64
  %96 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %97 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %96, i32 0, i32 4
  %98 = call i32 @atomic_set(i32* %97, i32 0)
  %99 = load i32, i32* @ieee80211_radio_led_activate, align 4
  %100 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %101 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @ieee80211_radio_led_deactivate, align 4
  %104 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %105 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %108 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %95
  %113 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %114 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %113, i32 0, i32 3
  %115 = call i64 @led_trigger_register(%struct.TYPE_2__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %119 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @kfree(i32* %121)
  %123 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %124 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %117, %112, %95
  %127 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %128 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %127, i32 0, i32 2
  %129 = call i32 @atomic_set(i32* %128, i32 0)
  %130 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %131 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %155

134:                                              ; preds = %126
  %135 = load i32, i32* @ieee80211_tpt_led_activate, align 4
  %136 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %137 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @ieee80211_tpt_led_deactivate, align 4
  %140 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %141 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %144 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %143, i32 0, i32 1
  %145 = call i64 @led_trigger_register(%struct.TYPE_2__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %134
  %148 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %149 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @kfree(i32* %150)
  %152 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %153 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %152, i32 0, i32 0
  store i32* null, i32** %153, align 8
  br label %154

154:                                              ; preds = %147, %134
  br label %155

155:                                              ; preds = %154, %126
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @led_trigger_register(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
