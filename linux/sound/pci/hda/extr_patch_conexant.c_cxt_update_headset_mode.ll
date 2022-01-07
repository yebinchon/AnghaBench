; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_cxt_update_headset_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_cxt_update_headset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i64*, i32, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt_update_headset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt_update_headset_mode(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.conexant_spec*, align 8
  %6 = alloca %struct.auto_pin_cfg*, align 8
  %7 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.conexant_spec*, %struct.conexant_spec** %9, align 8
  store %struct.conexant_spec* %10, %struct.conexant_spec** %5, align 8
  %11 = load %struct.conexant_spec*, %struct.conexant_spec** %5, align 8
  %12 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store %struct.auto_pin_cfg* %13, %struct.auto_pin_cfg** %6, align 8
  %14 = load %struct.conexant_spec*, %struct.conexant_spec** %5, align 8
  %15 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.conexant_spec*, %struct.conexant_spec** %5, align 8
  %19 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %17, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %57, %1
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %29 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %34 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %32
  %44 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %60

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %26

60:                                               ; preds = %43, %26
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %65 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %64, i32 28, i32 0, i32 1040, i32 124)
  %66 = load %struct.conexant_spec*, %struct.conexant_spec** %5, align 8
  %67 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  br label %84

69:                                               ; preds = %60
  %70 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %71 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %70, i32 28, i32 0, i32 1040, i32 84)
  %72 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %73 = load %struct.conexant_spec*, %struct.conexant_spec** %5, align 8
  %74 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %72, i32 %79)
  %81 = load %struct.conexant_spec*, %struct.conexant_spec** %5, align 8
  %82 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %69, %63
  %85 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %86 = call i32 @snd_hda_gen_update_outputs(%struct.hda_codec* %85)
  ret void
}

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_gen_update_outputs(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
