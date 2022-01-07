; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_fasttrackpro_skip_setting_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_fasttrackpro_skip_setting_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32, i32 }

@MAUDIO_SET = common dso_local global i32 0, align 4
@MAUDIO_SET_24B = common dso_local global i32 0, align 4
@MAUDIO_SET_96K = common dso_local global i32 0, align 4
@MAUDIO_SET_DI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"using altsetting %d for interface %d config %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32, i32)* @fasttrackpro_skip_setting_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasttrackpro_skip_setting_quirk(%struct.snd_usb_audio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %9 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @usb_set_interface(i32 %10, i32 %11, i32 0)
  %13 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %14 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAUDIO_SET, align 4
  %17 = load i32, i32* @MAUDIO_SET_24B, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %69

21:                                               ; preds = %3
  %22 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %23 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAUDIO_SET_96K, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 6
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %82

35:                                               ; preds = %31, %28
  br label %68

36:                                               ; preds = %21
  %37 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %38 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAUDIO_SET_DI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %82

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 5
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %82

54:                                               ; preds = %50, %47
  br label %67

55:                                               ; preds = %36
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %82

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 5
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %82

66:                                               ; preds = %62, %59
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %35
  br label %74

69:                                               ; preds = %3
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %4, align 4
  br label %82

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %68
  %75 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %79 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @usb_audio_dbg(%struct.snd_usb_audio* %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %74, %72, %65, %58, %53, %46, %34
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @usb_audio_dbg(%struct.snd_usb_audio*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
