; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_line6 = type { i32, %struct.TYPE_2__*, i32 (%struct.usb_line6*)*, i64, i32*, i32, %struct.usb_device* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Line 6 %s now disconnected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @line6_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.usb_line6* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.usb_line6* %6, %struct.usb_line6** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %7)
  store %struct.usb_device* %8, %struct.usb_device** %4, align 8
  %9 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %10 = icmp ne %struct.usb_line6* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %73

12:                                               ; preds = %1
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %15 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %14, i32 0, i32 6
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %17 = icmp ne %struct.usb_device* %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %73

22:                                               ; preds = %12
  %23 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %24 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %23, i32 0, i32 5
  %25 = call i32 @cancel_delayed_work(i32* %24)
  %26 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %27 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %32 = call i32 @line6_stop_listen(%struct.usb_line6* %31)
  br label %33

33:                                               ; preds = %30, %22
  %34 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %35 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @snd_card_disconnect(i32 %36)
  %38 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %39 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %44 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @line6_pcm_disconnect(i64 %45)
  br label %47

47:                                               ; preds = %42, %33
  %48 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %49 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %48, i32 0, i32 2
  %50 = load i32 (%struct.usb_line6*)*, i32 (%struct.usb_line6*)** %49, align 8
  %51 = icmp ne i32 (%struct.usb_line6*)* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %54 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %53, i32 0, i32 2
  %55 = load i32 (%struct.usb_line6*)*, i32 (%struct.usb_line6*)** %54, align 8
  %56 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %57 = call i32 %55(%struct.usb_line6* %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 0
  %61 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %62 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %68 = call i32 @usb_set_intfdata(%struct.usb_interface* %67, i32* null)
  %69 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %70 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @snd_card_free_when_closed(i32 %71)
  br label %73

73:                                               ; preds = %58, %21, %11
  ret void
}

declare dso_local %struct.usb_line6* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @line6_stop_listen(%struct.usb_line6*) #1

declare dso_local i32 @snd_card_disconnect(i32) #1

declare dso_local i32 @line6_pcm_disconnect(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @snd_card_free_when_closed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
