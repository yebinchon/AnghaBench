; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_svm_setting_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_svm_setting_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@NUM_OF_SVM_SETTINGS = common dso_local global i32 0, align 4
@SMART_VOLUME = common dso_local global i32 0, align 4
@EFFECT_START_NID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ca0132_alt_svm_setting: sel=%d, preset=%s\0A\00", align 1
@out_svm_set_enum_str = common dso_local global i32* null, align 8
@FLOAT_ZERO = common dso_local global i32 0, align 4
@FLOAT_ONE = common dso_local global i32 0, align 4
@FLOAT_TWO = common dso_local global i32 0, align 4
@ca0132_effects = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ca0132_alt_svm_setting_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_alt_svm_setting_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.ca0132_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.hda_codec* %13, %struct.hda_codec** %6, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.ca0132_spec*, %struct.ca0132_spec** %15, align 8
  store %struct.ca0132_spec* %16, %struct.ca0132_spec** %7, align 8
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @NUM_OF_SVM_SETTINGS, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @SMART_VOLUME, align 4
  %26 = load i32, i32* @EFFECT_START_NID, align 4
  %27 = sub i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

32:                                               ; preds = %2
  %33 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** @out_svm_set_enum_str, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @codec_dbg(%struct.hda_codec* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  %43 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %51 [
    i32 0, label %45
    i32 1, label %47
    i32 2, label %49
  ]

45:                                               ; preds = %32
  %46 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %46, i32* %11, align 4
  br label %53

47:                                               ; preds = %32
  %48 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %48, i32* %11, align 4
  br label %53

49:                                               ; preds = %32
  %50 = load i32, i32* @FLOAT_TWO, align 4
  store i32 %50, i32* %11, align 4
  br label %53

51:                                               ; preds = %32
  %52 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %51, %49, %47, %45
  %54 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ca0132_effects, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ca0132_effects, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @dspio_set_uint_param(%struct.hda_codec* %54, i32 %60, i32 %68, i32 %69)
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %53, %31
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, i32) #1

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
