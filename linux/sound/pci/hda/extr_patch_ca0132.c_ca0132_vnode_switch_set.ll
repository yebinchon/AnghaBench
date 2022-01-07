; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_vnode_switch_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_vnode_switch_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.hda_codec = type { i32, %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32* }

@VNID_HP_SEL = common dso_local global i64 0, align 8
@VNID_HP_ASEL = common dso_local global i64 0, align 8
@VNODE_START_NID = common dso_local global i64 0, align 8
@VNID_AMIC1_SEL = common dso_local global i64 0, align 8
@VNID_AMIC1_ASEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ca0132_vnode_switch_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_vnode_switch_set(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ca0132_spec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %16)
  store %struct.hda_codec* %17, %struct.hda_codec** %6, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %19 = call i64 @get_amp_nid(%struct.snd_kcontrol* %18)
  store i64 %19, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 1
  %22 = load %struct.ca0132_spec*, %struct.ca0132_spec** %21, align 8
  store %struct.ca0132_spec* %22, %struct.ca0132_spec** %11, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @VNID_HP_SEL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %2
  %27 = load %struct.ca0132_spec*, %struct.ca0132_spec** %11, align 8
  %28 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @VNID_HP_ASEL, align 8
  %31 = load i64, i64* @VNODE_START_NID, align 8
  %32 = sub i64 %30, %31
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %26
  %38 = load %struct.ca0132_spec*, %struct.ca0132_spec** %11, align 8
  %39 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %43 = call i32 @ca0132_alt_select_out(%struct.hda_codec* %42)
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %46 = call i32 @ca0132_select_out(%struct.hda_codec* %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %26
  store i32 1, i32* %3, align 4
  br label %124

49:                                               ; preds = %2
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @VNID_AMIC1_SEL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %struct.ca0132_spec*, %struct.ca0132_spec** %11, align 8
  %55 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @VNID_AMIC1_ASEL, align 8
  %58 = load i64, i64* @VNODE_START_NID, align 8
  %59 = sub i64 %57, %58
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %53
  %65 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %66 = call i32 @ca0132_select_mic(%struct.hda_codec* %65)
  br label %67

67:                                               ; preds = %64, %53
  store i32 1, i32* %3, align 4
  br label %124

68:                                               ; preds = %49
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @VNID_HP_ASEL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.ca0132_spec*, %struct.ca0132_spec** %11, align 8
  %74 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %78 = call i32 @ca0132_alt_select_out(%struct.hda_codec* %77)
  br label %82

79:                                               ; preds = %72
  %80 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %81 = call i32 @ca0132_select_out(%struct.hda_codec* %80)
  br label %82

82:                                               ; preds = %79, %76
  store i32 1, i32* %3, align 4
  br label %124

83:                                               ; preds = %68
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @VNID_AMIC1_ASEL, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %89 = call i32 @ca0132_select_mic(%struct.hda_codec* %88)
  store i32 1, i32* %3, align 4
  br label %124

90:                                               ; preds = %83
  %91 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @ca0132_is_vnode_effective(%struct.hda_codec* %91, i64 %92, i64* %8)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %90
  %97 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %98 = call i32 @get_amp_direction(%struct.snd_kcontrol* %97)
  store i32 %98, i32* %13, align 4
  %99 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %100 = call i32 @get_amp_channels(%struct.snd_kcontrol* %99)
  store i32 %100, i32* %14, align 4
  %101 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %102 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %101, i32 0, i32 0
  %103 = call i32 @mutex_lock(i32* %102)
  %104 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %105 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %15, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i64 @HDA_COMPOSE_AMP_VAL(i64 %107, i32 %108, i32 0, i32 %109)
  %111 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %112 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %114 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %115 = call i32 @snd_hda_mixer_amp_switch_put(%struct.snd_kcontrol* %113, %struct.snd_ctl_elem_value* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i64, i64* %15, align 8
  %117 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %118 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %120 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  br label %122

122:                                              ; preds = %96, %90
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %87, %82, %67, %48
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @get_amp_nid(%struct.snd_kcontrol*) #1

declare dso_local i64 @ca0132_use_alt_functions(%struct.ca0132_spec*) #1

declare dso_local i32 @ca0132_alt_select_out(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_select_out(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_select_mic(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_is_vnode_effective(%struct.hda_codec*, i64, i64*) #1

declare dso_local i32 @get_amp_direction(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_channels(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @HDA_COMPOSE_AMP_VAL(i64, i32, i32, i32) #1

declare dso_local i32 @snd_hda_mixer_amp_switch_put(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
