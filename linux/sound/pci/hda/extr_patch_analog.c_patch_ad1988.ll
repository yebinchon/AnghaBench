; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_patch_ad1988.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_patch_ad1988.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ad198x_spec* }
%struct.ad198x_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HDA_OUTPUT = common dso_local global i32 0, align 4
@ad1988_fixup_models = common dso_local global i32 0, align 4
@ad1988_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_ad1988 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_ad1988(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ad198x_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alloc_ad_spec(%struct.hda_codec* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.ad198x_spec*, %struct.ad198x_spec** %14, align 8
  store %struct.ad198x_spec* %15, %struct.ad198x_spec** %4, align 8
  %16 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %17 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 32, i32* %18, align 4
  %19 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %20 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 33, i32* %21, align 4
  %22 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %23 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 16, i32* %24, align 4
  %25 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %26 = load i32, i32* @HDA_OUTPUT, align 4
  %27 = call i32 @set_beep_amp(%struct.ad198x_spec* %25, i32 16, i32 0, i32 %26)
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = load i32, i32* @ad1988_fixup_models, align 4
  %30 = load i32, i32* @ad1988_fixups, align 4
  %31 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %28, i32 %29, i32* null, i32 %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %34 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %32, i32 %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = call i32 @ad198x_parse_auto_config(%struct.hda_codec* %35, i32 1)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %12
  br label %50

40:                                               ; preds = %12
  %41 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %42 = call i32 @ad1988_add_spdif_mux_ctl(%struct.hda_codec* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %50

46:                                               ; preds = %40
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %49 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %54

50:                                               ; preds = %45, %39
  %51 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %52 = call i32 @snd_hda_gen_free(%struct.hda_codec* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %46, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @alloc_ad_spec(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.ad198x_spec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32*, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @ad198x_parse_auto_config(%struct.hda_codec*, i32) #1

declare dso_local i32 @ad1988_add_spdif_mux_ctl(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_gen_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
