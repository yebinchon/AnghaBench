; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_add_effect_slider.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_add_effect_slider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"FX: %s %s Volume\00", align 1
@dirstr = common dso_local global i8** null, align 8
@ca0132_alt_xbass_xover_slider_info = common dso_local global i32 0, align 4
@ca0132_alt_xbass_xover_slider_ctl_get = common dso_local global i32 0, align 4
@ca0132_alt_xbass_xover_slider_put = common dso_local global i32 0, align 4
@ca0132_alt_effect_slider_info = common dso_local global i32 0, align 4
@ca0132_alt_slider_ctl_get = common dso_local global i32 0, align 4
@ca0132_alt_effect_slider_put = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i8*, i32)* @ca0132_alt_add_effect_slider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_alt_add_effect_slider(%struct.hda_codec* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_kcontrol_new, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @HDA_INPUT, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @HDA_OUTPUT, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %11, align 4
  call void @HDA_CODEC_VOLUME_MONO(%struct.snd_kcontrol_new* sret %12, i8* %16, i32 %25, i32 1, i32 0, i32 %26)
  %27 = load i8*, i8** %7, align 8
  %28 = load i8**, i8*** @dirstr, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %32)
  %34 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %12, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %44 [
    i32 128, label %37
  ]

37:                                               ; preds = %23
  %38 = load i32, i32* @ca0132_alt_xbass_xover_slider_info, align 4
  %39 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %12, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @ca0132_alt_xbass_xover_slider_ctl_get, align 4
  %41 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %12, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @ca0132_alt_xbass_xover_slider_put, align 4
  %43 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %12, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  br label %55

44:                                               ; preds = %23
  %45 = load i32, i32* @ca0132_alt_effect_slider_info, align 4
  %46 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %12, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @ca0132_alt_slider_ctl_get, align 4
  %48 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %12, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* @ca0132_alt_effect_slider_put, align 4
  %50 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %12, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @HDA_COMPOSE_AMP_VAL(i32 %51, i32 1, i32 0, i32 %52)
  %54 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %12, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  br label %55

55:                                               ; preds = %44, %37
  %56 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %59 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %12, %struct.hda_codec* %58)
  %60 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %56, i32 %57, i32 %59)
  %61 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local void @HDA_CODEC_VOLUME_MONO(%struct.snd_kcontrol_new* sret, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @HDA_COMPOSE_AMP_VAL(i32, i32, i32, i32) #2

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, i32) #2

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.hda_codec*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
