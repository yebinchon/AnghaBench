; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_LED.c_led_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_LED.c_led_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_led_info* }
%struct.xt_led_info = type { i64, i64, %struct.xt_led_info_internal* }
%struct.xt_led_info_internal = type { i32, i32 }

@XT_LED_BLINK_DELAY = common dso_local global i64 0, align 8
@LED_FULL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@LED_OFF = common dso_local global i32 0, align 4
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @led_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_led_info*, align 8
  %6 = alloca %struct.xt_led_info_internal*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %9 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %8, i32 0, i32 0
  %10 = load %struct.xt_led_info*, %struct.xt_led_info** %9, align 8
  store %struct.xt_led_info* %10, %struct.xt_led_info** %5, align 8
  %11 = load %struct.xt_led_info*, %struct.xt_led_info** %5, align 8
  %12 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %11, i32 0, i32 2
  %13 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %12, align 8
  store %struct.xt_led_info_internal* %13, %struct.xt_led_info_internal** %6, align 8
  %14 = load i64, i64* @XT_LED_BLINK_DELAY, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.xt_led_info*, %struct.xt_led_info** %5, align 8
  %16 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.xt_led_info*, %struct.xt_led_info** %5, align 8
  %21 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %6, align 8
  %26 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %25, i32 0, i32 1
  %27 = call i64 @timer_pending(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %6, align 8
  %31 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %30, i32 0, i32 0
  %32 = call i32 @led_trigger_blink_oneshot(i32* %31, i64* %7, i64* %7, i32 1)
  br label %38

33:                                               ; preds = %24, %19, %2
  %34 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %6, align 8
  %35 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %34, i32 0, i32 0
  %36 = load i32, i32* @LED_FULL, align 4
  %37 = call i32 @led_trigger_event(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.xt_led_info*, %struct.xt_led_info** %5, align 8
  %40 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %6, align 8
  %45 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %44, i32 0, i32 1
  %46 = load i64, i64* @jiffies, align 8
  %47 = load %struct.xt_led_info*, %struct.xt_led_info** %5, align 8
  %48 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @msecs_to_jiffies(i64 %49)
  %51 = add nsw i64 %46, %50
  %52 = call i32 @mod_timer(i32* %45, i64 %51)
  br label %64

53:                                               ; preds = %38
  %54 = load %struct.xt_led_info*, %struct.xt_led_info** %5, align 8
  %55 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %6, align 8
  %60 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %59, i32 0, i32 0
  %61 = load i32, i32* @LED_OFF, align 4
  %62 = call i32 @led_trigger_event(i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %65
}

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @led_trigger_blink_oneshot(i32*, i64*, i64*, i32) #1

declare dso_local i32 @led_trigger_event(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
