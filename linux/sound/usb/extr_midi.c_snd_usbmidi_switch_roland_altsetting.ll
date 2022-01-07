; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_switch_roland_altsetting.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_switch_roland_altsetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { i32*, i32, %struct.TYPE_3__*, %struct.usb_interface* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.usb_interface_descriptor = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"switching to altsetting %d with int ep\0A\00", align 1
@roland_load_ctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi*)* @snd_usbmidi_switch_roland_altsetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_switch_roland_altsetting(%struct.snd_usb_midi* %0) #0 {
  %2 = alloca %struct.snd_usb_midi*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca %struct.usb_interface_descriptor*, align 8
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %2, align 8
  %6 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %7 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %6, i32 0, i32 3
  %8 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  store %struct.usb_interface* %8, %struct.usb_interface** %3, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %10 = icmp ne %struct.usb_interface* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  br label %81

17:                                               ; preds = %11
  %18 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 1
  %20 = load %struct.usb_host_interface*, %struct.usb_host_interface** %19, align 8
  %21 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %20, i64 1
  store %struct.usb_host_interface* %21, %struct.usb_host_interface** %4, align 8
  %22 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %23 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %22)
  store %struct.usb_interface_descriptor* %23, %struct.usb_interface_descriptor** %5, align 8
  %24 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %25 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %46, label %28

28:                                               ; preds = %17
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %30 = call %struct.TYPE_4__* @get_endpoint(%struct.usb_host_interface* %29, i32 0)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %28
  %38 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %39 = call %struct.TYPE_4__* @get_endpoint(%struct.usb_host_interface* %38, i32 1)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %37, %17
  br label %81

47:                                               ; preds = %37, %28
  %48 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %49 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %53 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_dbg(i32* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %57 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %60 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %63 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usb_set_interface(%struct.TYPE_3__* %58, i32 %61, i32 %64)
  %66 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %67 = call i32* @snd_ctl_new1(i32* @roland_load_ctl, %struct.snd_usb_midi* %66)
  %68 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %69 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %71 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %74 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @snd_ctl_add(i32 %72, i32* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %47
  %79 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %80 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %16, %46, %78, %47
  ret void
}

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local %struct.TYPE_4__* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @usb_set_interface(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32* @snd_ctl_new1(i32*, %struct.snd_usb_midi*) #1

declare dso_local i64 @snd_ctl_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
