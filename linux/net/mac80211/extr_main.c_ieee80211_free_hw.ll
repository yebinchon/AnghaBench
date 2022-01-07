; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_main.c_ieee80211_free_hw.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_main.c_ieee80211_free_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_local = type { i32, %struct.TYPE_3__, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }

@ieee80211_free_ack_frame = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_free_hw(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %5)
  store %struct.ieee80211_local* %6, %struct.ieee80211_local** %3, align 8
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 5
  %9 = call i32 @mutex_destroy(i32* %8)
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %10, i32 0, i32 4
  %12 = call i32 @mutex_destroy(i32* %11)
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @kfree(i32 %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 2
  %28 = load i32, i32* @ieee80211_free_ack_frame, align 4
  %29 = call i32 @idr_for_each(i32* %27, i32 %28, i32* null)
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 2
  %32 = call i32 @idr_destroy(i32* %31)
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %34 = call i32 @sta_info_stop(%struct.ieee80211_local* %33)
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %36 = call i32 @ieee80211_free_led_names(%struct.ieee80211_local* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %62, %25
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %62

50:                                               ; preds = %41
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @kfree(i32 %60)
  br label %62

62:                                               ; preds = %50, %49
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %37

65:                                               ; preds = %37
  %66 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @wiphy_free(%struct.TYPE_4__* %69)
  ret void
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @idr_for_each(i32*, i32, i32*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @sta_info_stop(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_free_led_names(%struct.ieee80211_local*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wiphy_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
