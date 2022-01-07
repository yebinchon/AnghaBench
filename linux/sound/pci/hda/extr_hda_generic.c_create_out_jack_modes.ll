; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_create_out_jack_modes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_create_out_jack_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64 }
%struct.snd_kcontrol_new = type { i64 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@out_jack_mode_enum = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i64*)* @create_out_jack_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_out_jack_modes(%struct.hda_codec* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.hda_gen_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.snd_kcontrol_new*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 0
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %16, align 8
  store %struct.hda_gen_spec* %17, %struct.hda_gen_spec** %8, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %64, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %30 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %64

34:                                               ; preds = %22
  %35 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @get_out_jack_num_items(%struct.hda_codec* %35, i64 %36)
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %12, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %13, align 8
  %44 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %45 = load i64, i64* %10, align 8
  %46 = trunc i64 %41 to i32
  %47 = call i32 @get_jack_mode_name(%struct.hda_codec* %44, i64 %45, i8* %43, i32 %46)
  %48 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %49 = call %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec* %48, i8* %43, i32* @out_jack_mode_enum)
  store %struct.snd_kcontrol_new* %49, %struct.snd_kcontrol_new** %11, align 8
  %50 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %51 = icmp ne %struct.snd_kcontrol_new* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %59

55:                                               ; preds = %39
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %58 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %14, align 4
  switch i32 %61, label %70 [
    i32 0, label %62
    i32 1, label %68
  ]

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %34
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %18

67:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %59
  %69 = load i32, i32* %4, align 4
  ret i32 %69

70:                                               ; preds = %59
  unreachable
}

declare dso_local i32 @get_out_jack_num_items(%struct.hda_codec*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_jack_mode_name(%struct.hda_codec*, i64, i8*, i32) #1

declare dso_local %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec*, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
