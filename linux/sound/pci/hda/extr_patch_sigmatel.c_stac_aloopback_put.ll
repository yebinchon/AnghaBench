; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_aloopback_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_aloopback_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.hda_codec = type { %struct.TYPE_6__, %struct.sigmatel_spec* }
%struct.TYPE_6__ = type { i32 }
%struct.sigmatel_spec = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @stac_aloopback_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac_aloopback_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.sigmatel_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.hda_codec* %13, %struct.hda_codec** %6, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 1
  %16 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %15, align 8
  store %struct.sigmatel_spec* %16, %struct.sigmatel_spec** %7, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 1
  %20 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %17, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %22 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %36 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %10, align 4
  br label %47

40:                                               ; preds = %2
  %41 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %42 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %49 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %104

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %57 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %59 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %60 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %64 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 65535
  %67 = call i32 @snd_hda_codec_read(%struct.hda_codec* %58, i32 %62, i32 0, i32 %66, i32 0)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %69 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = lshr i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %74 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %54
  %80 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %81 = call i32 @snd_hda_power_up(%struct.hda_codec* %80)
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %92

85:                                               ; preds = %54
  %86 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %87 = call i32 @snd_hda_power_down(%struct.hda_codec* %86)
  %88 = load i32, i32* %11, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %85, %79
  %93 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %94 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %95 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %99 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 16
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %93, i32 %97, i32 0, i32 %101, i32 %102)
  store i32 1, i32* %3, align 4
  br label %104

104:                                              ; preds = %92, %53
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_power_up(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_power_down(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
