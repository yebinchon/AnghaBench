; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_olpc_xo_update_mic_pins.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_olpc_xo_update_mic_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i64, %struct.nid_path*, i64, i32, %struct.TYPE_4__ }
%struct.nid_path = type { i32 }
%struct.TYPE_4__ = type { i32**, i64* }

@olpc_xo_dc_bias = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PIN_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @olpc_xo_update_mic_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @olpc_xo_update_mic_pins(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.conexant_spec*, %struct.conexant_spec** %8, align 8
  store %struct.conexant_spec* %9, %struct.conexant_spec** %3, align 8
  %10 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %11 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %17 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %15, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %25 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %70, label %28

28:                                               ; preds = %1
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = call i32 @update_mic_pin(%struct.hda_codec* %29, i32 30, i32 0)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %33 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %32, i32 0, i32 1
  %34 = load %struct.nid_path*, %struct.nid_path** %33, align 8
  %35 = call i32 @snd_hda_activate_path(%struct.hda_codec* %31, %struct.nid_path* %34, i32 0, i32 0)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %38 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %42, i32 26)
  br label %45

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  %47 = call i32 @update_mic_pin(%struct.hda_codec* %36, i32 26, i32 %46)
  %48 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %49 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %50 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %55 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %54, i32 27)
  br label %57

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %55, %53 ], [ 0, %56 ]
  %59 = call i32 @update_mic_pin(%struct.hda_codec* %48, i32 27, i32 %58)
  %60 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %60, i32 %61)
  store %struct.nid_path* %62, %struct.nid_path** %6, align 8
  %63 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %64 = icmp ne %struct.nid_path* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %67 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %68 = call i32 @snd_hda_activate_path(%struct.hda_codec* %66, %struct.nid_path* %67, i32 1, i32 0)
  br label %69

69:                                               ; preds = %65, %57
  br label %116

70:                                               ; preds = %1
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %71, i32 %72)
  store %struct.nid_path* %73, %struct.nid_path** %6, align 8
  %74 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %75 = icmp ne %struct.nid_path* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %78 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %79 = call i32 @snd_hda_activate_path(%struct.hda_codec* %77, %struct.nid_path* %78, i32 0, i32 0)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %82 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @olpc_xo_dc_bias, i32 0, i32 0), align 8
  %87 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %88 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %5, align 4
  br label %94

93:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %85
  %95 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @update_mic_pin(%struct.hda_codec* %95, i32 26, i32 %96)
  %98 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %99 = call i32 @update_mic_pin(%struct.hda_codec* %98, i32 27, i32 0)
  %100 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %101 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %102 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32, i32* @PIN_IN, align 4
  br label %108

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ]
  %110 = call i32 @update_mic_pin(%struct.hda_codec* %100, i32 30, i32 %109)
  %111 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %112 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %113 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %112, i32 0, i32 1
  %114 = load %struct.nid_path*, %struct.nid_path** %113, align 8
  %115 = call i32 @snd_hda_activate_path(%struct.hda_codec* %111, %struct.nid_path* %114, i32 1, i32 0)
  br label %116

116:                                              ; preds = %108, %69
  ret void
}

declare dso_local i32 @update_mic_pin(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_activate_path(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_get_pin_target(%struct.hda_codec*, i32) #1

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
