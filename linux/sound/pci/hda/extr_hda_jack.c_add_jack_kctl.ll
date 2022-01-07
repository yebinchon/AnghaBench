; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_add_jack_kctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_add_jack_kctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.auto_pin_cfg = type { i32 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@AC_JACK_PORT_NONE = common dso_local global i32 0, align 4
@AC_JACK_PORT_COMPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c" Phantom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, %struct.auto_pin_cfg*, i8*)* @add_jack_kctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_jack_kctl(%struct.hda_codec* %0, i32 %1, %struct.auto_pin_cfg* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.auto_pin_cfg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.auto_pin_cfg* %2, %struct.auto_pin_cfg** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

24:                                               ; preds = %4
  %25 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @get_defcfg_connect(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @AC_JACK_PORT_NONE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

34:                                               ; preds = %24
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @AC_JACK_PORT_COMPLEX, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @is_jack_detectable(%struct.hda_codec* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ true, %34 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = trunc i64 %18 to i32
  %52 = call i32 @strlcpy(i8* %20, i8* %50, i32 %51)
  br label %59

53:                                               ; preds = %44
  %54 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %8, align 8
  %57 = trunc i64 %18 to i32
  %58 = call i32 @snd_hda_get_pin_label(%struct.hda_codec* %54, i32 %55, %struct.auto_pin_cfg* %56, i8* %20, i32 %57, i32* null)
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = call i32 @strlen(i8* %20)
  %64 = sext i32 %63 to i64
  %65 = sub i64 %18, %64
  %66 = sub i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = call i32 @strncat(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %62, %59
  %70 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @snd_hda_jack_add_kctl(%struct.hda_codec* %70, i32 %71, i8* %20, i32 %72, i32 0, i32* null)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

78:                                               ; preds = %69
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @snd_hda_jack_detect_enable(%struct.hda_codec* %82, i32 %83)
  store i32 %84, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

85:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

86:                                               ; preds = %85, %81, %76, %33, %23
  %87 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #2

declare dso_local i32 @get_defcfg_connect(i32) #2

declare dso_local i32 @is_jack_detectable(%struct.hda_codec*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @snd_hda_get_pin_label(%struct.hda_codec*, i32, %struct.auto_pin_cfg*, i8*, i32, i32*) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snd_hda_jack_add_kctl(%struct.hda_codec*, i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @snd_hda_jack_detect_enable(%struct.hda_codec*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
