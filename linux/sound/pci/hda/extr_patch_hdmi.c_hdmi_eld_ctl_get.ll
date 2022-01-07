; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_eld_ctl_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_eld_ctl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_spec_per_pin = type { %struct.hdmi_eld }
%struct.hdmi_eld = type { i64, i32, i64 }

@ELD_MAX_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hdmi_eld_ctl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_eld_ctl_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hdmi_spec*, align 8
  %7 = alloca %struct.hdmi_spec_per_pin*, align 8
  %8 = alloca %struct.hdmi_eld*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.hda_codec* %12, %struct.hda_codec** %5, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.hdmi_spec*, %struct.hdmi_spec** %14, align 8
  store %struct.hdmi_spec* %15, %struct.hdmi_spec** %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %20 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.hdmi_spec_per_pin* @pcm_idx_to_pin(%struct.hdmi_spec* %22, i32 %23)
  store %struct.hdmi_spec_per_pin* %24, %struct.hdmi_spec_per_pin** %7, align 8
  %25 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %26 = icmp ne %struct.hdmi_spec_per_pin* %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %2
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ARRAY_SIZE(i32 %37)
  %39 = call i32 @memset(i32 %32, i32 0, i64 %38)
  br label %94

40:                                               ; preds = %2
  %41 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %42 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %41, i32 0, i32 0
  store %struct.hdmi_eld* %42, %struct.hdmi_eld** %8, align 8
  %43 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %44 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ARRAY_SIZE(i32 %50)
  %52 = icmp sgt i64 %45, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %40
  %54 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %55 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ELD_MAX_SIZE, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53, %40
  %60 = call i32 (...) @snd_BUG()
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %94

63:                                               ; preds = %53
  %64 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %70 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ARRAY_SIZE(i32 %73)
  %75 = call i32 @memset(i32 %68, i32 0, i64 %74)
  %76 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %77 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %63
  %81 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %82 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %87 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %90 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @memcpy(i32 %85, i32 %88, i64 %91)
  br label %93

93:                                               ; preds = %80, %63
  br label %94

94:                                               ; preds = %93, %59, %27
  %95 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %96 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hdmi_spec_per_pin* @pcm_idx_to_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
