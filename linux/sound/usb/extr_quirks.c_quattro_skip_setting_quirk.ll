; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_quattro_skip_setting_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_quattro_skip_setting_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32, i32 }

@MAUDIO_SET = common dso_local global i32 0, align 4
@MAUDIO_SET_COMPATIBLE = common dso_local global i32 0, align 4
@MAUDIO_SET_96K = common dso_local global i32 0, align 4
@MAUDIO_SET_MASK = common dso_local global i32 0, align 4
@MAUDIO_SET_24B_48K_DI = common dso_local global i32 0, align 4
@MAUDIO_SET_24B_48K_NOTDI = common dso_local global i32 0, align 4
@MAUDIO_SET_16B_48K_NOTDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"using altsetting %d for interface %d config %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32, i32)* @quattro_skip_setting_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quattro_skip_setting_quirk(%struct.snd_usb_audio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %10 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @usb_set_interface(i32 %11, i32 %12, i32 0)
  %14 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %15 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAUDIO_SET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %84

20:                                               ; preds = %3
  %21 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %22 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAUDIO_SET_COMPATIBLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %92

34:                                               ; preds = %30, %27
  br label %83

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  store i32 1, i32* %4, align 4
  br label %92

42:                                               ; preds = %38
  %43 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %44 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAUDIO_SET_96K, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %92

53:                                               ; preds = %49, %42
  %54 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %55 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MAUDIO_SET_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @MAUDIO_SET_24B_48K_DI, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %92

66:                                               ; preds = %62, %53
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @MAUDIO_SET_24B_48K_NOTDI, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %92

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @MAUDIO_SET_16B_48K_NOTDI, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 4
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %92

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %34
  br label %84

84:                                               ; preds = %83, %3
  %85 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %89 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @usb_audio_dbg(%struct.snd_usb_audio* %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i32 %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %84, %81, %73, %65, %52, %41, %33
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @usb_audio_dbg(%struct.snd_usb_audio*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
