; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_patch_vt1716S.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_patch_vt1716S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.via_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@vt1716S_init_verbs = common dso_local global i32 0, align 4
@vt1716s_dmic_mixer_vol = common dso_local global i32 0, align 4
@vt1716s_dmic_mixer_sw = common dso_local global i32 0, align 4
@vt1716S_mono_out_mixer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_vt1716S to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt1716S(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call %struct.via_spec* @via_new_spec(%struct.hda_codec* %6)
  store %struct.via_spec* %7, %struct.via_spec** %4, align 8
  %8 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %9 = icmp eq %struct.via_spec* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 22, i32* %16, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = call i32 @override_mic_boost(%struct.hda_codec* %17, i32 26, i32 0, i32 3, i32 40)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = call i32 @override_mic_boost(%struct.hda_codec* %19, i32 30, i32 0, i32 3, i32 40)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = load i32, i32* @vt1716S_init_verbs, align 4
  %23 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %52

27:                                               ; preds = %13
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = call i32 @via_parse_auto_config(%struct.hda_codec* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %52

33:                                               ; preds = %27
  %34 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %35 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %34, i32 0, i32 0
  %36 = call i32 @snd_hda_gen_add_kctl(%struct.TYPE_2__* %35, i32* null, i32* @vt1716s_dmic_mixer_vol)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %40 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %39, i32 0, i32 0
  %41 = call i32 @snd_hda_gen_add_kctl(%struct.TYPE_2__* %40, i32* null, i32* @vt1716s_dmic_mixer_sw)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %45 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %44, i32 0, i32 0
  %46 = call i32 @snd_hda_gen_add_kctl(%struct.TYPE_2__* %45, i32* null, i32* @vt1716S_mono_out_mixer)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %38, %33
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %56

52:                                               ; preds = %48, %32, %26
  %53 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %54 = call i32 @via_free(%struct.hda_codec* %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %51, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.via_spec* @via_new_spec(%struct.hda_codec*) #1

declare dso_local i32 @override_mic_boost(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @via_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_gen_add_kctl(%struct.TYPE_2__*, i32*, i32*) #1

declare dso_local i32 @via_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
