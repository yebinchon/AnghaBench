; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_audiophile_skip_setting_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_audiophile_skip_setting_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32, i32 }

@MAUDIO_SET = common dso_local global i32 0, align 4
@MAUDIO_SET_DTS = common dso_local global i32 0, align 4
@MAUDIO_SET_96K = common dso_local global i32 0, align 4
@MAUDIO_SET_MASK = common dso_local global i32 0, align 4
@MAUDIO_SET_24B_48K_DI = common dso_local global i32 0, align 4
@MAUDIO_SET_24B_48K_NOTDI = common dso_local global i32 0, align 4
@MAUDIO_SET_16B_48K_DI = common dso_local global i32 0, align 4
@MAUDIO_SET_16B_48K_NOTDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32, i32)* @audiophile_skip_setting_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audiophile_skip_setting_quirk(%struct.snd_usb_audio* %0, i32 %1, i32 %2) #0 {
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
  br i1 %19, label %20, label %80

20:                                               ; preds = %3
  %21 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %22 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAUDIO_SET_DTS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 6
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %81

31:                                               ; preds = %27, %20
  %32 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %33 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAUDIO_SET_96K, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %81

42:                                               ; preds = %38, %31
  %43 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %44 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAUDIO_SET_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @MAUDIO_SET_24B_48K_DI, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %81

55:                                               ; preds = %51, %42
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MAUDIO_SET_24B_48K_NOTDI, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 3
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %81

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @MAUDIO_SET_16B_48K_DI, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 4
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %81

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @MAUDIO_SET_16B_48K_NOTDI, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 5
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 1, i32* %4, align 4
  br label %81

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %3
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %78, %70, %62, %54, %41, %30
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
