; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_composite_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_composite_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_driver = type { i32 }
%struct.snd_usb_audio_quirk = type { i32, %struct.snd_usb_audio_quirk* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, %struct.snd_usb_audio_quirk*)* @create_composite_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_composite_quirk(%struct.snd_usb_audio* %0, %struct.usb_interface* %1, %struct.usb_driver* %2, %struct.snd_usb_audio_quirk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_driver*, align 8
  %9 = alloca %struct.snd_usb_audio_quirk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_usb_audio_quirk*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %7, align 8
  store %struct.usb_driver* %2, %struct.usb_driver** %8, align 8
  store %struct.snd_usb_audio_quirk* %3, %struct.snd_usb_audio_quirk** %9, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_2__* @get_iface_desc(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %9, align 8
  %20 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %19, i32 0, i32 1
  %21 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %20, align 8
  store %struct.snd_usb_audio_quirk* %21, %struct.snd_usb_audio_quirk** %11, align 8
  br label %22

22:                                               ; preds = %60, %4
  %23 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %11, align 8
  %24 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  %28 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %29 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %11, align 8
  %32 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %30, i32 %33)
  store %struct.usb_interface* %34, %struct.usb_interface** %7, align 8
  %35 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %36 = icmp ne %struct.usb_interface* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %60

38:                                               ; preds = %27
  %39 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %11, align 8
  %40 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %46 = call i64 @usb_interface_claimed(%struct.usb_interface* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %60

49:                                               ; preds = %44, %38
  %50 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %51 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %52 = load %struct.usb_driver*, %struct.usb_driver** %8, align 8
  %53 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %11, align 8
  %54 = call i32 @snd_usb_create_quirk(%struct.snd_usb_audio* %50, %struct.usb_interface* %51, %struct.usb_driver* %52, %struct.snd_usb_audio_quirk* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %102

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %48, %37
  %61 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %11, align 8
  %62 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %61, i32 1
  store %struct.snd_usb_audio_quirk* %62, %struct.snd_usb_audio_quirk** %11, align 8
  br label %22

63:                                               ; preds = %22
  %64 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %9, align 8
  %65 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %64, i32 0, i32 1
  %66 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %65, align 8
  store %struct.snd_usb_audio_quirk* %66, %struct.snd_usb_audio_quirk** %11, align 8
  br label %67

67:                                               ; preds = %98, %63
  %68 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %11, align 8
  %69 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %67
  %73 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %74 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %11, align 8
  %77 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %75, i32 %78)
  store %struct.usb_interface* %79, %struct.usb_interface** %7, align 8
  %80 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %81 = icmp ne %struct.usb_interface* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  br label %98

83:                                               ; preds = %72
  %84 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %11, align 8
  %85 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %91 = call i64 @usb_interface_claimed(%struct.usb_interface* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load %struct.usb_driver*, %struct.usb_driver** %8, align 8
  %95 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %96 = call i32 @usb_driver_claim_interface(%struct.usb_driver* %94, %struct.usb_interface* %95, i8* inttoptr (i64 -1 to i8*))
  br label %97

97:                                               ; preds = %93, %89, %83
  br label %98

98:                                               ; preds = %97, %82
  %99 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %11, align 8
  %100 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %99, i32 1
  store %struct.snd_usb_audio_quirk* %100, %struct.snd_usb_audio_quirk** %11, align 8
  br label %67

101:                                              ; preds = %67
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %57
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_2__* @get_iface_desc(i32) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local i64 @usb_interface_claimed(%struct.usb_interface*) #1

declare dso_local i32 @snd_usb_create_quirk(%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, %struct.snd_usb_audio_quirk*) #1

declare dso_local i32 @usb_driver_claim_interface(%struct.usb_driver*, %struct.usb_interface*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
