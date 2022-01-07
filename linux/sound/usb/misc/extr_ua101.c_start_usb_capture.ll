; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_start_usb_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_start_usb_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { %struct.TYPE_7__, i32, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@USB_CAPTURE_RUNNING = common dso_local global i32 0, align 4
@INTF_CAPTURE = common dso_local global i32 0, align 4
@CAPTURE_URB_COMPLETED = common dso_local global i32 0, align 4
@first_capture_urb_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ua101*)* @start_usb_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_usb_capture(%struct.ua101* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ua101*, align 8
  %4 = alloca i32, align 4
  store %struct.ua101* %0, %struct.ua101** %3, align 8
  %5 = load i32, i32* @DISCONNECTED, align 4
  %6 = load %struct.ua101*, %struct.ua101** %3, align 8
  %7 = getelementptr inbounds %struct.ua101, %struct.ua101* %6, i32 0, i32 1
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %64

13:                                               ; preds = %1
  %14 = load i32, i32* @USB_CAPTURE_RUNNING, align 4
  %15 = load %struct.ua101*, %struct.ua101** %3, align 8
  %16 = getelementptr inbounds %struct.ua101, %struct.ua101* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %64

20:                                               ; preds = %13
  %21 = load %struct.ua101*, %struct.ua101** %3, align 8
  %22 = getelementptr inbounds %struct.ua101, %struct.ua101* %21, i32 0, i32 0
  %23 = call i32 @kill_stream_urbs(%struct.TYPE_7__* %22)
  %24 = load %struct.ua101*, %struct.ua101** %3, align 8
  %25 = load i32, i32* @INTF_CAPTURE, align 4
  %26 = call i32 @enable_iso_interface(%struct.ua101* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %64

31:                                               ; preds = %20
  %32 = load i32, i32* @CAPTURE_URB_COMPLETED, align 4
  %33 = load %struct.ua101*, %struct.ua101** %3, align 8
  %34 = getelementptr inbounds %struct.ua101, %struct.ua101* %33, i32 0, i32 1
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  %36 = load i32, i32* @first_capture_urb_complete, align 4
  %37 = load %struct.ua101*, %struct.ua101** %3, align 8
  %38 = getelementptr inbounds %struct.ua101, %struct.ua101* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %36, i32* %44, align 4
  %45 = load %struct.ua101*, %struct.ua101** %3, align 8
  %46 = getelementptr inbounds %struct.ua101, %struct.ua101* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.ua101*, %struct.ua101** %3, align 8
  %48 = getelementptr inbounds %struct.ua101, %struct.ua101* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @USB_CAPTURE_RUNNING, align 4
  %50 = load %struct.ua101*, %struct.ua101** %3, align 8
  %51 = getelementptr inbounds %struct.ua101, %struct.ua101* %50, i32 0, i32 1
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  %53 = load %struct.ua101*, %struct.ua101** %3, align 8
  %54 = load %struct.ua101*, %struct.ua101** %3, align 8
  %55 = getelementptr inbounds %struct.ua101, %struct.ua101* %54, i32 0, i32 0
  %56 = call i32 @submit_stream_urbs(%struct.ua101* %53, %struct.TYPE_7__* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %31
  %60 = load %struct.ua101*, %struct.ua101** %3, align 8
  %61 = call i32 @stop_usb_capture(%struct.ua101* %60)
  br label %62

62:                                               ; preds = %59, %31
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %29, %19, %10
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kill_stream_urbs(%struct.TYPE_7__*) #1

declare dso_local i32 @enable_iso_interface(%struct.ua101*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @submit_stream_urbs(%struct.ua101*, %struct.TYPE_7__*) #1

declare dso_local i32 @stop_usb_capture(%struct.ua101*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
