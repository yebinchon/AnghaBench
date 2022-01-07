; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_led.c___ieee80211_create_tpt_led_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_led.c___ieee80211_create_tpt_led_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_tpt_blink = type { i32 }
%struct.ieee80211_local = type { %struct.tpt_led_trigger*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.tpt_led_trigger = type { i8*, i32, i32, i32, %struct.ieee80211_local*, %struct.ieee80211_tpt_blink* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%stpt\00", align 1
@tpt_trig_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__ieee80211_create_tpt_led_trigger(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_tpt_blink* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tpt_blink*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.tpt_led_trigger*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_tpt_blink* %2, %struct.ieee80211_tpt_blink** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %13 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %12)
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %10, align 8
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 0
  %16 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %15, align 8
  %17 = call i64 @WARN_ON(%struct.tpt_led_trigger* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %64

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.tpt_led_trigger* @kzalloc(i32 40, i32 %21)
  store %struct.tpt_led_trigger* %22, %struct.tpt_led_trigger** %11, align 8
  %23 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %11, align 8
  %24 = icmp ne %struct.tpt_led_trigger* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i8* null, i8** %5, align 8
  br label %64

26:                                               ; preds = %20
  %27 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %11, align 8
  %28 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @wiphy_name(i32 %33)
  %35 = call i32 @snprintf(i8* %29, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %11, align 8
  %37 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %40 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load %struct.ieee80211_tpt_blink*, %struct.ieee80211_tpt_blink** %8, align 8
  %43 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %11, align 8
  %44 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %43, i32 0, i32 5
  store %struct.ieee80211_tpt_blink* %42, %struct.ieee80211_tpt_blink** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %11, align 8
  %47 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %11, align 8
  %50 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %52 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %11, align 8
  %53 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %52, i32 0, i32 4
  store %struct.ieee80211_local* %51, %struct.ieee80211_local** %53, align 8
  %54 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %11, align 8
  %55 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %54, i32 0, i32 3
  %56 = load i32, i32* @tpt_trig_timer, align 4
  %57 = call i32 @timer_setup(i32* %55, i32 %56, i32 0)
  %58 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %11, align 8
  %59 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %60 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %59, i32 0, i32 0
  store %struct.tpt_led_trigger* %58, %struct.tpt_led_trigger** %60, align 8
  %61 = load %struct.tpt_led_trigger*, %struct.tpt_led_trigger** %11, align 8
  %62 = getelementptr inbounds %struct.tpt_led_trigger, %struct.tpt_led_trigger* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %5, align 8
  br label %64

64:                                               ; preds = %26, %25, %19
  %65 = load i8*, i8** %5, align 8
  ret i8* %65
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local i64 @WARN_ON(%struct.tpt_led_trigger*) #1

declare dso_local %struct.tpt_led_trigger* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @wiphy_name(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
