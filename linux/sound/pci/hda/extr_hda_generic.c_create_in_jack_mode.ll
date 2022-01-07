; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_create_in_jack_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_create_in_jack_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64 }
%struct.snd_kcontrol_new = type { i64 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@INPUT_PIN_ATTR_INT = common dso_local global i64 0, align 8
@in_jack_mode_enum = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i64)* @create_in_jack_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_in_jack_mode(%struct.hda_codec* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca %struct.snd_kcontrol_new*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %6, align 8
  %15 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %21 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %26, i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @snd_hda_get_input_pin_attr(i32 %29)
  %31 = load i64, i64* @INPUT_PIN_ATTR_INT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

34:                                               ; preds = %25
  %35 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @get_in_jack_num_items(%struct.hda_codec* %35, i64 %36)
  %38 = icmp sle i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

40:                                               ; preds = %34
  %41 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = trunc i64 %16 to i32
  %44 = call i32 @get_jack_mode_name(%struct.hda_codec* %41, i64 %42, i8* %18, i32 %43)
  %45 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %46 = call %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec* %45, i8* %18, i32* @in_jack_mode_enum)
  store %struct.snd_kcontrol_new* %46, %struct.snd_kcontrol_new** %7, align 8
  %47 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %48 = icmp ne %struct.snd_kcontrol_new* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

52:                                               ; preds = %40
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %55 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %49, %39, %33, %24
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i64) #2

declare dso_local i64 @snd_hda_get_input_pin_attr(i32) #2

declare dso_local i32 @get_in_jack_num_items(%struct.hda_codec*, i64) #2

declare dso_local i32 @get_jack_mode_name(%struct.hda_codec*, i64, i8*, i32) #2

declare dso_local %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
