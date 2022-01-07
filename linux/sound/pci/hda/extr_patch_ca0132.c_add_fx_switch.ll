; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_add_fx_switch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_add_fx_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }
%struct.snd_kcontrol_new = type { i32 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@IN_EFFECT_END_NID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"FX: %s %s Switch\00", align 1
@dirstr = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%s %s Switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i8*, i32)* @add_fx_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_fx_switch(%struct.hda_codec* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ca0132_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.ca0132_spec*, %struct.ca0132_spec** %15, align 8
  store %struct.ca0132_spec* %16, %struct.ca0132_spec** %9, align 8
  %17 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @HDA_INPUT, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @HDA_OUTPUT, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @CA0132_CODEC_MUTE_MONO(i8* %20, i32 %29, i32 1, i32 %30)
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %34 = call i64 @ca0132_use_alt_controls(%struct.ca0132_spec* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IN_EFFECT_END_NID, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = load i8**, i8*** @dirstr, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %46)
  br label %56

48:                                               ; preds = %36, %27
  %49 = load i8*, i8** %7, align 8
  %50 = load i8**, i8*** @dirstr, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %54)
  br label %56

56:                                               ; preds = %48, %40
  %57 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %60 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %13, %struct.hda_codec* %59)
  %61 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %57, i32 %58, i32 %60)
  %62 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %62)
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CA0132_CODEC_MUTE_MONO(i8*, i32, i32, i32) #2

declare dso_local i64 @ca0132_use_alt_controls(%struct.ca0132_spec*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

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
