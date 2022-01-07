; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_leds.c_power_activate.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_leds.c_power_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.hci_basic_led_trigger = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HCI_UP = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @power_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.hci_basic_led_trigger*, align 8
  %4 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %5 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %6 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.hci_basic_led_trigger* @to_hci_basic_led_trigger(i32 %7)
  store %struct.hci_basic_led_trigger* %8, %struct.hci_basic_led_trigger** %3, align 8
  %9 = load i32, i32* @HCI_UP, align 4
  %10 = load %struct.hci_basic_led_trigger*, %struct.hci_basic_led_trigger** %3, align 8
  %11 = getelementptr inbounds %struct.hci_basic_led_trigger, %struct.hci_basic_led_trigger* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %9, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %16 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @LED_FULL, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @LED_OFF, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @led_trigger_event(i32 %17, i32 %25)
  ret i32 0
}

declare dso_local %struct.hci_basic_led_trigger* @to_hci_basic_led_trigger(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
