; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_add_micmute_led.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_add_micmute_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { void (%struct.hda_codec.0*)*, i32, i64, i64, i32 }
%struct.hda_codec.0 = type opaque

@MICMUTE_LED_FOLLOW_MUTE = common dso_local global i32 0, align 4
@update_micmute_led = common dso_local global i32 0, align 4
@micmute_led_mode_ctl = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_gen_add_micmute_led(%struct.hda_codec* %0, void (%struct.hda_codec*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca void (%struct.hda_codec*)*, align 8
  %6 = alloca %struct.hda_gen_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store void (%struct.hda_codec*)* %1, void (%struct.hda_codec*)** %5, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  store %struct.hda_gen_spec* %9, %struct.hda_gen_spec** %6, align 8
  %10 = load i32, i32* @MICMUTE_LED_FOLLOW_MUTE, align 4
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 8
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %15 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %21 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %24 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load void (%struct.hda_codec*)*, void (%struct.hda_codec*)** %5, align 8
  %27 = bitcast void (%struct.hda_codec*)* %26 to void (%struct.hda_codec.0*)*
  %28 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %29 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store void (%struct.hda_codec.0*)* %27, void (%struct.hda_codec.0*)** %30, align 8
  %31 = load i32, i32* @update_micmute_led, align 4
  %32 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %33 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %35 = call i32 @snd_hda_gen_add_kctl(%struct.hda_gen_spec* %34, i32* null, i32* @micmute_led_mode_ctl)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @snd_hda_gen_add_kctl(%struct.hda_gen_spec*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
