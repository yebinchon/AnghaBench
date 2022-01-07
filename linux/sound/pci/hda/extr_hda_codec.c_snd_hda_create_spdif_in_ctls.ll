; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_create_spdif_in_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_create_spdif_in_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i64 }
%struct.hda_codec = type { i32 }
%struct.snd_kcontrol = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"IEC958 Capture Switch\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"too many IEC958 inputs\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@dig_in_ctls = common dso_local global %struct.snd_kcontrol_new* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AC_VERB_GET_DIGI_CONVERT_1 = common dso_local global i32 0, align 4
@AC_DIG1_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca %struct.snd_kcontrol_new*, align 8
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = call i32 @find_empty_mixer_ctl_idx(%struct.hda_codec* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %16 = call i32 @codec_err(%struct.hda_codec* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @dig_in_ctls, align 8
  store %struct.snd_kcontrol_new* %20, %struct.snd_kcontrol_new** %8, align 8
  br label %21

21:                                               ; preds = %48, %19
  %22 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %28 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %29 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %27, %struct.hda_codec* %28)
  store %struct.snd_kcontrol* %29, %struct.snd_kcontrol** %7, align 8
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %31 = icmp ne %struct.snd_kcontrol* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %60

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %38 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %42 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %39, i32 %40, %struct.snd_kcontrol* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %49, i32 1
  store %struct.snd_kcontrol_new* %50, %struct.snd_kcontrol_new** %8, align 8
  br label %21

51:                                               ; preds = %21
  %52 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @AC_VERB_GET_DIGI_CONVERT_1, align 4
  %55 = call i32 @snd_hda_codec_read(%struct.hda_codec* %52, i32 %53, i32 0, i32 %54, i32 0)
  %56 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %59 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %45, %32, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @find_empty_mixer_ctl_idx(%struct.hda_codec*, i8*, i32) #1

declare dso_local i32 @codec_err(%struct.hda_codec*, i8*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.hda_codec*) #1

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
