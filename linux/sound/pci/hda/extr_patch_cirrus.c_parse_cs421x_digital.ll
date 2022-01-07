; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_parse_cs421x_digital.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_parse_cs421x_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cs_spec* }
%struct.cs_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, i32* }

@AC_WCAP_UNSOL_CAP = common dso_local global i32 0, align 4
@cs4210_spdif_automute = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @parse_cs421x_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_cs421x_digital(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.cs_spec*, align 8
  %4 = alloca %struct.auto_pin_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.cs_spec*, %struct.cs_spec** %8, align 8
  store %struct.cs_spec* %9, %struct.cs_spec** %3, align 8
  %10 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %11 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.auto_pin_cfg* %12, %struct.auto_pin_cfg** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %41, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @get_wcaps(%struct.hda_codec* %27, i32 %28)
  %30 = load i32, i32* @AC_WCAP_UNSOL_CAP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %19
  %34 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %35 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @cs4210_spdif_automute, align 4
  %39 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %13

44:                                               ; preds = %13
  ret void
}

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
