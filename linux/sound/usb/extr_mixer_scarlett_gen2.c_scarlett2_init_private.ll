; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_init_private.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_init_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32, i32, %struct.scarlett2_mixer_data* }
%struct.scarlett2_mixer_data = type { i32, %struct.usb_mixer_interface*, i64, i32, %struct.scarlett2_device_info*, i32, i32, i32 }
%struct.scarlett2_device_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scarlett2_config_save_work = common dso_local global i32 0, align 4
@scarlett2_private_free = common dso_local global i32 0, align 4
@scarlett2_private_suspend = common dso_local global i32 0, align 4
@SCARLETT2_USB_INIT_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, %struct.scarlett2_device_info*)* @scarlett2_init_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_init_private(%struct.usb_mixer_interface* %0, %struct.scarlett2_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_interface*, align 8
  %5 = alloca %struct.scarlett2_device_info*, align 8
  %6 = alloca %struct.scarlett2_mixer_data*, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %4, align 8
  store %struct.scarlett2_device_info* %1, %struct.scarlett2_device_info** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.scarlett2_mixer_data* @kzalloc(i32 56, i32 %7)
  store %struct.scarlett2_mixer_data* %8, %struct.scarlett2_mixer_data** %6, align 8
  %9 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %6, align 8
  %10 = icmp ne %struct.scarlett2_mixer_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %6, align 8
  %16 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %15, i32 0, i32 7
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %6, align 8
  %19 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %18, i32 0, i32 6
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %6, align 8
  %22 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %21, i32 0, i32 5
  %23 = load i32, i32* @scarlett2_config_save_work, align 4
  %24 = call i32 @INIT_DELAYED_WORK(i32* %22, i32 %23)
  %25 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %26 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %6, align 8
  %27 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %26, i32 0, i32 4
  store %struct.scarlett2_device_info* %25, %struct.scarlett2_device_info** %27, align 8
  %28 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %29 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @scarlett2_count_mux_srcs(i32 %30)
  %32 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %6, align 8
  %33 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %6, align 8
  %35 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %37 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %6, align 8
  %38 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %37, i32 0, i32 1
  store %struct.usb_mixer_interface* %36, %struct.usb_mixer_interface** %38, align 8
  %39 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %6, align 8
  %40 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %40, i32 0, i32 2
  store %struct.scarlett2_mixer_data* %39, %struct.scarlett2_mixer_data** %41, align 8
  %42 = load i32, i32* @scarlett2_private_free, align 4
  %43 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %44 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @scarlett2_private_suspend, align 4
  %46 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %47 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %6, align 8
  %49 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %52 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @scarlett2_init_routing(i32 %50, i32 %53)
  %55 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %56 = load i32, i32* @SCARLETT2_USB_INIT_SEQ, align 4
  %57 = call i32 @scarlett2_usb(%struct.usb_mixer_interface* %55, i32 %56, i32* null, i32 0, i32* null, i32 0)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %14, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.scarlett2_mixer_data* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @scarlett2_count_mux_srcs(i32) #1

declare dso_local i32 @scarlett2_init_routing(i32, i32) #1

declare dso_local i32 @scarlett2_usb(%struct.usb_mixer_interface*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
