; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_auto_pcm_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_auto_pcm_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32, i32 }
%struct.usb_driver = type { i32 }
%struct.usb_interface_descriptor = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.uac1_as_header_descriptor = type { i32 }
%struct.uac_format_type_i_discrete_descriptor = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@UAC_AS_GENERAL = common dso_local global i32 0, align 4
@UAC_FORMAT_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*)* @create_auto_pcm_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_auto_pcm_quirk(%struct.snd_usb_audio* %0, %struct.usb_interface* %1, %struct.usb_driver* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_driver*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_interface_descriptor*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca %struct.uac1_as_header_descriptor*, align 8
  %12 = alloca %struct.uac_format_type_i_discrete_descriptor*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store %struct.usb_driver* %2, %struct.usb_driver** %7, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 1
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %22, align 8
  %24 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i64 1
  store %struct.usb_host_interface* %24, %struct.usb_host_interface** %8, align 8
  %25 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %26 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %25)
  store %struct.usb_interface_descriptor* %26, %struct.usb_interface_descriptor** %9, align 8
  %27 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %28 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %85

34:                                               ; preds = %20
  %35 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %36 = call %struct.usb_endpoint_descriptor* @get_endpoint(%struct.usb_host_interface* %35, i32 0)
  store %struct.usb_endpoint_descriptor* %36, %struct.usb_endpoint_descriptor** %10, align 8
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %38 = call i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %85

43:                                               ; preds = %34
  %44 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %45 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %48 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UAC_AS_GENERAL, align 4
  %51 = call i8* @snd_usb_find_csint_desc(i32 %46, i32 %49, i32* null, i32 %50)
  %52 = bitcast i8* %51 to %struct.uac1_as_header_descriptor*
  store %struct.uac1_as_header_descriptor* %52, %struct.uac1_as_header_descriptor** %11, align 8
  %53 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %54 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %57 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @UAC_FORMAT_TYPE, align 4
  %60 = call i8* @snd_usb_find_csint_desc(i32 %55, i32 %58, i32* null, i32 %59)
  %61 = bitcast i8* %60 to %struct.uac_format_type_i_discrete_descriptor*
  store %struct.uac_format_type_i_discrete_descriptor* %61, %struct.uac_format_type_i_discrete_descriptor** %12, align 8
  %62 = load %struct.uac1_as_header_descriptor*, %struct.uac1_as_header_descriptor** %11, align 8
  %63 = icmp ne %struct.uac1_as_header_descriptor* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %43
  %65 = load %struct.uac1_as_header_descriptor*, %struct.uac1_as_header_descriptor** %11, align 8
  %66 = getelementptr inbounds %struct.uac1_as_header_descriptor, %struct.uac1_as_header_descriptor* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 7
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %12, align 8
  %71 = icmp ne %struct.uac_format_type_i_discrete_descriptor* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %12, align 8
  %74 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 8
  br i1 %76, label %77, label %80

77:                                               ; preds = %72, %69, %64, %43
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %85

80:                                               ; preds = %72
  %81 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %82 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %83 = load %struct.usb_driver*, %struct.usb_driver** %7, align 8
  %84 = call i32 @create_standard_audio_quirk(%struct.snd_usb_audio* %81, %struct.usb_interface* %82, %struct.usb_driver* %83, i32* null)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %77, %40, %31, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local %struct.usb_endpoint_descriptor* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @snd_usb_find_csint_desc(i32, i32, i32*, i32) #1

declare dso_local i32 @create_standard_audio_quirk(%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
