; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_audio_format_alloc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_audio_format_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audioformat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_usb_audio = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audioformat* (%struct.snd_usb_audio*, %struct.usb_host_interface*, i32, i32, i32, i32, i32, i32)* @audio_format_alloc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audioformat* @audio_format_alloc_init(%struct.snd_usb_audio* %0, %struct.usb_host_interface* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.audioformat*, align 8
  %10 = alloca %struct.snd_usb_audio*, align 8
  %11 = alloca %struct.usb_host_interface*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.audioformat*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %10, align 8
  store %struct.usb_host_interface* %1, %struct.usb_host_interface** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.audioformat* @kzalloc(i32 44, i32 %19)
  store %struct.audioformat* %20, %struct.audioformat** %18, align 8
  %21 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %22 = icmp ne %struct.audioformat* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %8
  store %struct.audioformat* null, %struct.audioformat** %9, align 8
  br label %92

24:                                               ; preds = %8
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %27 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %30 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %33 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %35 = call %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface* %34, i32 0)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %39 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 4
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %41 = call %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface* %40, i32 0)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %45 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %47 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %48 = call i32 @snd_usb_parse_datainterval(%struct.snd_usb_audio* %46, %struct.usb_host_interface* %47)
  %49 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %50 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %53 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %55 = call %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface* %54, i32 0)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %60 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %63 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %65 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @snd_usb_get_speed(i32 %66)
  %68 = load i64, i64* @USB_SPEED_HIGH, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %24
  %71 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %72 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 11
  %75 = and i32 %74, 3
  %76 = add nsw i32 %75, 1
  %77 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %78 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 2047
  %81 = mul nsw i32 %76, %80
  %82 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %83 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %70, %24
  %85 = load i32, i32* %17, align 4
  %86 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %87 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 4
  %88 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %89 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %88, i32 0, i32 7
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  store %struct.audioformat* %91, %struct.audioformat** %9, align 8
  br label %92

92:                                               ; preds = %84, %23
  %93 = load %struct.audioformat*, %struct.audioformat** %9, align 8
  ret %struct.audioformat* %93
}

declare dso_local %struct.audioformat* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @snd_usb_parse_datainterval(%struct.snd_usb_audio*, %struct.usb_host_interface*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @snd_usb_get_speed(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
