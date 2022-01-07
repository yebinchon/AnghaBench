; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_autodetect_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_autodetect_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_driver = type { i32 }
%struct.snd_usb_audio_quirk = type { i64 }
%struct.TYPE_8__ = type { i32, i64 }

@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, %struct.snd_usb_audio_quirk*)* @create_autodetect_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_autodetect_quirks(%struct.snd_usb_audio* %0, %struct.usb_interface* %1, %struct.usb_driver* %2, %struct.snd_usb_audio_quirk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_driver*, align 8
  %9 = alloca %struct.snd_usb_audio_quirk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %7, align 8
  store %struct.usb_driver* %2, %struct.usb_driver** %8, align 8
  store %struct.snd_usb_audio_quirk* %3, %struct.snd_usb_audio_quirk** %9, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_8__* @get_iface_desc(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %22 = load %struct.usb_driver*, %struct.usb_driver** %8, align 8
  %23 = call i32 @create_autodetect_quirk(%struct.snd_usb_audio* %20, %struct.usb_interface* %21, %struct.usb_driver* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %5, align 4
  br label %89

28:                                               ; preds = %4
  %29 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %30 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %85, %28
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %9, align 8
  %47 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %41
  br label %85

51:                                               ; preds = %45
  %52 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %53 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_7__* %54, i32 %55)
  store %struct.usb_interface* %56, %struct.usb_interface** %7, align 8
  %57 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %58 = icmp ne %struct.usb_interface* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %51
  %60 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %61 = call i64 @usb_interface_claimed(%struct.usb_interface* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_8__* @get_iface_desc(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63, %59, %51
  br label %85

73:                                               ; preds = %63
  %74 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %75 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %76 = load %struct.usb_driver*, %struct.usb_driver** %8, align 8
  %77 = call i32 @create_autodetect_quirk(%struct.snd_usb_audio* %74, %struct.usb_interface* %75, %struct.usb_driver* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.usb_driver*, %struct.usb_driver** %8, align 8
  %82 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %83 = call i32 @usb_driver_claim_interface(%struct.usb_driver* %81, %struct.usb_interface* %82, i8* inttoptr (i64 -1 to i8*))
  br label %84

84:                                               ; preds = %80, %73
  br label %85

85:                                               ; preds = %84, %72, %50
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %37

88:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %26
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_8__* @get_iface_desc(i32) #1

declare dso_local i32 @create_autodetect_quirk(%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @usb_interface_claimed(%struct.usb_interface*) #1

declare dso_local i32 @usb_driver_claim_interface(%struct.usb_driver*, %struct.usb_interface*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
