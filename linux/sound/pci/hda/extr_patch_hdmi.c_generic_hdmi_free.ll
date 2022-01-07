; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i64, %struct.TYPE_3__*, %struct.hdmi_spec* }
%struct.TYPE_3__ = type { i32 }
%struct.hdmi_spec = type { i32, i32, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.hdmi_spec_per_pin = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @generic_hdmi_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_hdmi_free(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hdmi_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_spec_per_pin*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 3
  %9 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  store %struct.hdmi_spec* %9, %struct.hdmi_spec** %3, align 8
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %11 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @snd_hdac_acomp_exit(i32* %18)
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i64 @codec_has_acomp(%struct.hda_codec* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @snd_hdac_acomp_register_notifier(i32* %28, i32* null)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %24, %20
  br label %33

33:                                               ; preds = %32, %14
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %37 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %41, i32 %42)
  store %struct.hdmi_spec_per_pin* %43, %struct.hdmi_spec_per_pin** %6, align 8
  %44 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %6, align 8
  %45 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %44, i32 0, i32 0
  %46 = call i32 @cancel_delayed_work_sync(i32* %45)
  %47 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %6, align 8
  %48 = call i32 @eld_proc_free(%struct.hdmi_spec_per_pin* %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %34

52:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %97, %52
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %56 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %100

59:                                               ; preds = %53
  %60 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %61 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %97

70:                                               ; preds = %59
  %71 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %72 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %77 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %80 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @snd_device_free(i32 %78, i32* %86)
  br label %96

88:                                               ; preds = %70
  %89 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %90 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %88, %75
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %53

100:                                              ; preds = %53
  %101 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %102 = call i32 @generic_spec_free(%struct.hda_codec* %101)
  ret void
}

declare dso_local i32 @snd_hdac_acomp_exit(i32*) #1

declare dso_local i64 @codec_has_acomp(%struct.hda_codec*) #1

declare dso_local i32 @snd_hdac_acomp_register_notifier(i32*, i32*) #1

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @eld_proc_free(%struct.hdmi_spec_per_pin*) #1

declare dso_local i32 @snd_device_free(i32, i32*) #1

declare dso_local i32 @generic_spec_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
