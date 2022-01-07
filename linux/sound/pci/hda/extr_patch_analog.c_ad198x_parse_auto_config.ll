; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad198x_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad198x_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i32, %struct.ad198x_spec* }
%struct.ad198x_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32 }

@HDA_HINT_STEREO_MIX_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @ad198x_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad198x_parse_auto_config(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad198x_spec*, align 8
  %7 = alloca %struct.auto_pin_cfg*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 3
  %11 = load %struct.ad198x_spec*, %struct.ad198x_spec** %10, align 8
  store %struct.ad198x_spec* %11, %struct.ad198x_spec** %6, align 8
  %12 = load %struct.ad198x_spec*, %struct.ad198x_spec** %6, align 8
  %13 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store %struct.auto_pin_cfg* %14, %struct.auto_pin_cfg** %7, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 2
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ad198x_spec*, %struct.ad198x_spec** %6, align 8
  %23 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.ad198x_spec*, %struct.ad198x_spec** %6, align 8
  %26 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = load i64, i64* @HDA_HINT_STEREO_MIX_AUTO, align 8
  %32 = load %struct.ad198x_spec*, %struct.ad198x_spec** %6, align 8
  %33 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %37 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %7, align 8
  %38 = call i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec* %36, %struct.auto_pin_cfg* %37, i32* null, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %52

43:                                               ; preds = %35
  %44 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %45 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %7, align 8
  %46 = call i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec* %44, %struct.auto_pin_cfg* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %49, %41
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec*, %struct.auto_pin_cfg*, i32*, i32) #1

declare dso_local i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec*, %struct.auto_pin_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
