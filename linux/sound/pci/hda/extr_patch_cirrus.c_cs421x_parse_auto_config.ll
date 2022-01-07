; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs421x_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs421x_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cs_spec* }
%struct.cs_spec = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@CS4210_DAC_NID = common dso_local global i32 0, align 4
@CS4210_VENDOR_NID = common dso_local global i64 0, align 8
@cs421x_speaker_boost_ctl = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @cs421x_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs421x_parse_auto_config(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.cs_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.cs_spec*, %struct.cs_spec** %8, align 8
  store %struct.cs_spec* %9, %struct.cs_spec** %4, align 8
  %10 = load i32, i32* @CS4210_DAC_NID, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @fix_volume_caps(%struct.hda_codec* %11, i32 %12)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %16 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec* %14, %struct.TYPE_4__* %17, i32* null, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %58

23:                                               ; preds = %1
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %26 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec* %24, %struct.TYPE_4__* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %58

33:                                               ; preds = %23
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = call i32 @parse_cs421x_digital(%struct.hda_codec* %34)
  %36 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %37 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %33
  %43 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %44 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CS4210_VENDOR_NID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %50 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %49, i32 0, i32 1
  %51 = call i32 @snd_hda_gen_add_kctl(%struct.TYPE_5__* %50, i32* null, i32* @cs421x_speaker_boost_ctl)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %58

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %42, %33
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %53, %31, %21
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @fix_volume_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec*, %struct.TYPE_4__*) #1

declare dso_local i32 @parse_cs421x_digital(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_gen_add_kctl(%struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
