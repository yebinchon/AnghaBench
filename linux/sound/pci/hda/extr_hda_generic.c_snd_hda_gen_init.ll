; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_3__, %struct.hda_gen_spec* }
%struct.TYPE_3__ = type { i32 }
%struct.hda_gen_spec = type { %struct.TYPE_4__, i32, i32 (%struct.hda_codec.0*)* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.hda_codec.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_gen_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 1
  %6 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  store %struct.hda_gen_spec* %6, %struct.hda_gen_spec** %3, align 8
  %7 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %7, i32 0, i32 2
  %9 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %8, align 8
  %10 = icmp ne i32 (%struct.hda_codec.0*)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %12, i32 0, i32 2
  %14 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %13, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = bitcast %struct.hda_codec* %15 to %struct.hda_codec.0*
  %17 = call i32 %14(%struct.hda_codec.0* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %20 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 @snd_hda_apply_verbs(%struct.hda_codec* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = call i32 @init_multi_out(%struct.hda_codec* %27)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = call i32 @init_extra_out(%struct.hda_codec* %29)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = call i32 @init_multi_io(%struct.hda_codec* %31)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @init_aamix_paths(%struct.hda_codec* %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @init_analog_input(%struct.hda_codec* %35)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = call i32 @init_input_src(%struct.hda_codec* %37)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @init_digital(%struct.hda_codec* %39)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = call i32 @clear_unsol_on_unused_pins(%struct.hda_codec* %41)
  %43 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %44 = call i32 @sync_all_pin_power_ctls(%struct.hda_codec* %43)
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = call i32 @update_automute_all(%struct.hda_codec* %45)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @regcache_sync(i32 %50)
  %52 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %53 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %26
  %58 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %59 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %65 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %64, i32 0, i32 0
  %66 = call i32 @snd_hda_sync_vmaster_hook(%struct.TYPE_4__* %65)
  br label %67

67:                                               ; preds = %63, %57, %26
  %68 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %69 = call i32 @hda_call_check_power_status(%struct.hda_codec* %68, i32 1)
  ret i32 0
}

declare dso_local i32 @snd_hda_apply_verbs(%struct.hda_codec*) #1

declare dso_local i32 @init_multi_out(%struct.hda_codec*) #1

declare dso_local i32 @init_extra_out(%struct.hda_codec*) #1

declare dso_local i32 @init_multi_io(%struct.hda_codec*) #1

declare dso_local i32 @init_aamix_paths(%struct.hda_codec*) #1

declare dso_local i32 @init_analog_input(%struct.hda_codec*) #1

declare dso_local i32 @init_input_src(%struct.hda_codec*) #1

declare dso_local i32 @init_digital(%struct.hda_codec*) #1

declare dso_local i32 @clear_unsol_on_unused_pins(%struct.hda_codec*) #1

declare dso_local i32 @sync_all_pin_power_ctls(%struct.hda_codec*) #1

declare dso_local i32 @update_automute_all(%struct.hda_codec*) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @snd_hda_sync_vmaster_hook(%struct.TYPE_4__*) #1

declare dso_local i32 @hda_call_check_power_status(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
