; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_hp_mic_jack_mode_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_hp_mic_jack_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_codec = type { i32 }

@PIN_HP = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@AC_PINCTL_VREFEN = common dso_local global i32 0, align 4
@PIN_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hp_mic_jack_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_mic_jack_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.hda_codec* %15, %struct.hda_codec** %6, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @get_out_jack_num_items(%struct.hda_codec* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @get_in_jack_num_items(%struct.hda_codec* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @get_cur_hp_mic_jack_mode(%struct.hda_codec* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

39:                                               ; preds = %2
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @PIN_HP, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @PIN_OUT, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %10, align 4
  br label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @PIN_HP, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %53
  br label %91

58:                                               ; preds = %39
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @get_vref_caps(%struct.hda_codec* %65, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @AC_PINCTL_VREFEN, align 4
  %72 = load i32, i32* @PIN_HP, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @get_vref_idx(i32 %77, i32 %78)
  %80 = load i32, i32* @PIN_IN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %90

84:                                               ; preds = %58
  %85 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @snd_hda_get_default_vref(%struct.hda_codec* %85, i32 %86)
  %88 = load i32, i32* @PIN_IN, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %84, %64
  br label %91

91:                                               ; preds = %90, %57
  %92 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %92, i32 %93, i32 %94)
  %96 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %97 = call i32 @call_hp_automute(%struct.hda_codec* %96, i32* null)
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %91, %38
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_out_jack_num_items(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_in_jack_num_items(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_cur_hp_mic_jack_mode(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_vref_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_get_pin_target(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_vref_idx(i32, i32) #1

declare dso_local i32 @snd_hda_get_default_vref(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @call_hp_automute(%struct.hda_codec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
