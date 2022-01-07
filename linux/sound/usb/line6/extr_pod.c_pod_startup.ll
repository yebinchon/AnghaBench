; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pod.c_pod_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pod.c_pod_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, i32 }
%struct.usb_line6_pod = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to register POD card.\0A\00", align 1
@POD_STARTUP_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_line6*)* @pod_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pod_startup(%struct.usb_line6* %0) #0 {
  %2 = alloca %struct.usb_line6*, align 8
  %3 = alloca %struct.usb_line6_pod*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %2, align 8
  %4 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %5 = call %struct.usb_line6_pod* @line6_to_pod(%struct.usb_line6* %4)
  store %struct.usb_line6_pod* %5, %struct.usb_line6_pod** %3, align 8
  %6 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %7 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %32 [
    i32 128, label %9
    i32 129, label %12
  ]

9:                                                ; preds = %1
  %10 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %11 = call i32 @line6_version_request_async(%struct.usb_line6* %10)
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %14 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %13, i32 0, i32 2
  %15 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %16 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %15, i32 0, i32 1
  %17 = call i32 @line6_read_serial_number(i32* %14, i32* %16)
  %18 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %19 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snd_card_register(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %25 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %12
  %29 = load i32, i32* @POD_STARTUP_DONE, align 4
  %30 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %31 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %28, %9
  ret void
}

declare dso_local %struct.usb_line6_pod* @line6_to_pod(%struct.usb_line6*) #1

declare dso_local i32 @line6_version_request_async(%struct.usb_line6*) #1

declare dso_local i32 @line6_read_serial_number(i32*, i32*) #1

declare dso_local i32 @snd_card_register(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
