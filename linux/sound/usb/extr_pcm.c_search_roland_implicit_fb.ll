; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_search_roland_implicit_fb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_search_roland_implicit_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_interface_descriptor = type { i32, i64, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@USB_ENDPOINT_USAGE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_USAGE_IMPLICIT_FB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32, %struct.usb_host_interface**, i32*)* @search_roland_implicit_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_roland_implicit_fb(%struct.usb_device* %0, i32 %1, i32 %2, %struct.usb_host_interface** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_host_interface**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.usb_interface*, align 8
  %13 = alloca %struct.usb_interface_descriptor*, align 8
  %14 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.usb_host_interface** %3, %struct.usb_host_interface*** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %15, i32 %16)
  store %struct.usb_interface* %17, %struct.usb_interface** %12, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %19 = icmp ne %struct.usb_interface* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = add i32 %24, 1
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %5
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %93

30:                                               ; preds = %20
  %31 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 1
  %33 = load %struct.usb_host_interface*, %struct.usb_host_interface** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %33, i64 %35
  %37 = load %struct.usb_host_interface**, %struct.usb_host_interface*** %10, align 8
  store %struct.usb_host_interface* %36, %struct.usb_host_interface** %37, align 8
  %38 = load %struct.usb_host_interface**, %struct.usb_host_interface*** %10, align 8
  %39 = load %struct.usb_host_interface*, %struct.usb_host_interface** %38, align 8
  %40 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %39)
  store %struct.usb_interface_descriptor* %40, %struct.usb_interface_descriptor** %13, align 8
  %41 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %42 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %67, label %46

46:                                               ; preds = %30
  %47 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %48 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %67, label %52

52:                                               ; preds = %46
  %53 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %54 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 2
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %59 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 2
  br i1 %61, label %67, label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %13, align 8
  %64 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %57, %46, %30
  %68 = load i32, i32* @ENOENT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %93

70:                                               ; preds = %62
  %71 = load %struct.usb_host_interface**, %struct.usb_host_interface*** %10, align 8
  %72 = load %struct.usb_host_interface*, %struct.usb_host_interface** %71, align 8
  %73 = call %struct.usb_endpoint_descriptor* @get_endpoint(%struct.usb_host_interface* %72, i32 0)
  store %struct.usb_endpoint_descriptor* %73, %struct.usb_endpoint_descriptor** %14, align 8
  %74 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %75 = call i32 @usb_endpoint_is_isoc_in(%struct.usb_endpoint_descriptor* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %79 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @USB_ENDPOINT_USAGE_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @USB_ENDPOINT_USAGE_IMPLICIT_FB, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77, %70
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %93

88:                                               ; preds = %77
  %89 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %90 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %11, align 8
  store i32 %91, i32* %92, align 4
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %88, %85, %67, %27
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local %struct.usb_endpoint_descriptor* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @usb_endpoint_is_isoc_in(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
