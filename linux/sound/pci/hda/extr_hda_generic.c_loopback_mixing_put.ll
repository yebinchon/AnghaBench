; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_loopback_mixing_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_loopback_mixing_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32*, i32*, i32*, i32*, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i64, i32, i32, i32 }

@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @loopback_mixing_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_mixing_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hda_gen_spec*, align 8
  %8 = alloca %struct.auto_pin_cfg*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hda_codec* %11, %struct.hda_codec** %6, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %7, align 8
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 5
  store %struct.auto_pin_cfg* %16, %struct.auto_pin_cfg** %8, align 8
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %26 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %33 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %35 = call i64 @has_aamix_out_paths(%struct.hda_gen_spec* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %82

37:                                               ; preds = %30
  %38 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %41 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %46 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %8, align 8
  %51 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @update_aamix_paths(%struct.hda_codec* %38, i32 %39, i32 %44, i32 %49, i64 %52)
  %54 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %57 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %62 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %67 = call i32 @update_aamix_paths(%struct.hda_codec* %54, i32 %55, i32 %60, i32 %65, i64 %66)
  %68 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %71 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %76 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %81 = call i32 @update_aamix_paths(%struct.hda_codec* %68, i32 %69, i32 %74, i32 %79, i64 %80)
  br label %121

82:                                               ; preds = %30
  %83 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %84 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %8, align 8
  %85 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %88 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @update_output_paths(%struct.hda_codec* %83, i32 %86, i32* %89)
  %91 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %8, align 8
  %92 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %82
  %97 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %98 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %8, align 8
  %99 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %102 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @update_output_paths(%struct.hda_codec* %97, i32 %100, i32* %103)
  br label %105

105:                                              ; preds = %96, %82
  %106 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %8, align 8
  %107 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %113 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %8, align 8
  %114 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %117 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @update_output_paths(%struct.hda_codec* %112, i32 %115, i32* %118)
  br label %120

120:                                              ; preds = %111, %105
  br label %121

121:                                              ; preds = %120, %37
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %29
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @has_aamix_out_paths(%struct.hda_gen_spec*) #1

declare dso_local i32 @update_aamix_paths(%struct.hda_codec*, i32, i32, i32, i64) #1

declare dso_local i32 @update_output_paths(%struct.hda_codec*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
