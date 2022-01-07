; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_variax.c_variax_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_variax.c_variax_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32 }
%struct.usb_line6_variax = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VARIAX_STARTUP_DELAY1 = common dso_local global i32 0, align 4
@VARIAX_STARTUP_DELAY4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_line6*)* @variax_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @variax_startup(%struct.usb_line6* %0) #0 {
  %2 = alloca %struct.usb_line6*, align 8
  %3 = alloca %struct.usb_line6_variax*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %2, align 8
  %4 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %5 = call %struct.usb_line6_variax* @line6_to_variax(%struct.usb_line6* %4)
  store %struct.usb_line6_variax* %5, %struct.usb_line6_variax** %3, align 8
  %6 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %3, align 8
  %7 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %33 [
    i32 128, label %9
    i32 130, label %17
    i32 129, label %27
  ]

9:                                                ; preds = %1
  %10 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %11 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %10, i32 0, i32 0
  %12 = load i32, i32* @VARIAX_STARTUP_DELAY1, align 4
  %13 = call i32 @msecs_to_jiffies(i32 %12)
  %14 = call i32 @schedule_delayed_work(i32* %11, i32 %13)
  %15 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %16 = call i32 @line6_version_request_async(%struct.usb_line6* %15)
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %3, align 8
  %19 = call i32 @variax_activate_async(%struct.usb_line6_variax* %18, i32 1)
  %20 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %3, align 8
  %21 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %20, i32 0, i32 0
  store i32 129, i32* %21, align 4
  %22 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %23 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %22, i32 0, i32 0
  %24 = load i32, i32* @VARIAX_STARTUP_DELAY4, align 4
  %25 = call i32 @msecs_to_jiffies(i32 %24)
  %26 = call i32 @schedule_delayed_work(i32* %23, i32 %25)
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %3, align 8
  %29 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_card_register(i32 %31)
  br label %33

33:                                               ; preds = %1, %27, %17, %9
  ret void
}

declare dso_local %struct.usb_line6_variax* @line6_to_variax(%struct.usb_line6*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @line6_version_request_async(%struct.usb_line6*) #1

declare dso_local i32 @variax_activate_async(%struct.usb_line6_variax*, i32) #1

declare dso_local i32 @snd_card_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
