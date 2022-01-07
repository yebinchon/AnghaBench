; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8766.c_snd_wm8766_add_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8766.c_snd_wm8766_add_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wm8766 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.snd_kcontrol*, i32*, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@WM8766_FLAG_LIM = common dso_local global i32 0, align 4
@WM8766_FLAG_ALC = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@snd_wm8766_ctl_get = common dso_local global i32 0, align 4
@snd_wm8766_ctl_put = common dso_local global i32 0, align 4
@snd_wm8766_volume_info = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4
@WM8766_FLAG_STEREO = common dso_local global i32 0, align 4
@snd_ctl_boolean_stereo_info = common dso_local global i32 0, align 4
@snd_ctl_boolean_mono_info = common dso_local global i32 0, align 4
@snd_wm8766_enum_info = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_wm8766*, i32)* @snd_wm8766_add_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_wm8766_add_control(%struct.snd_wm8766* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_wm8766*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_kcontrol_new, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_wm8766* %0, %struct.snd_wm8766** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @memset(%struct.snd_kcontrol_new* %6, i32 0, i32 40)
  %9 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %10 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 7
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %14 = getelementptr inbounds %struct.snd_wm8766, %struct.snd_wm8766* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 6
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %23 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %25 = getelementptr inbounds %struct.snd_wm8766, %struct.snd_wm8766* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @WM8766_FLAG_LIM, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %2
  %36 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %37 = getelementptr inbounds %struct.snd_wm8766, %struct.snd_wm8766* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @WM8766_FLAG_ALC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35, %2
  %48 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %49 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %35
  %53 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* @snd_wm8766_ctl_get, align 4
  %56 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 5
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @snd_wm8766_ctl_put, align 4
  %58 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 4
  store i32 %57, i32* %58, align 4
  %59 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %60 = getelementptr inbounds %struct.snd_wm8766, %struct.snd_wm8766* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %113 [
    i32 128, label %67
    i32 130, label %84
    i32 129, label %110
  ]

67:                                               ; preds = %52
  %68 = load i32, i32* @snd_wm8766_volume_info, align 4
  %69 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  %71 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 8
  %74 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %75 = getelementptr inbounds %struct.snd_wm8766, %struct.snd_wm8766* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  br label %116

84:                                               ; preds = %52
  %85 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %86 = getelementptr inbounds %struct.snd_wm8766, %struct.snd_wm8766* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  %92 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %93 = getelementptr inbounds %struct.snd_wm8766, %struct.snd_wm8766* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @WM8766_FLAG_STEREO, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %84
  %104 = load i32, i32* @snd_ctl_boolean_stereo_info, align 4
  %105 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  br label %109

106:                                              ; preds = %84
  %107 = load i32, i32* @snd_ctl_boolean_mono_info, align 4
  %108 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %103
  br label %116

110:                                              ; preds = %52
  %111 = load i32, i32* @snd_wm8766_enum_info, align 4
  %112 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  br label %116

113:                                              ; preds = %52
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %138

116:                                              ; preds = %110, %109, %67
  %117 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %118 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %6, %struct.snd_wm8766* %117)
  store %struct.snd_kcontrol* %118, %struct.snd_kcontrol** %7, align 8
  %119 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %120 = icmp ne %struct.snd_kcontrol* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %138

124:                                              ; preds = %116
  %125 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %126 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %127 = getelementptr inbounds %struct.snd_wm8766, %struct.snd_wm8766* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  store %struct.snd_kcontrol* %125, %struct.snd_kcontrol** %132, align 8
  %133 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %134 = getelementptr inbounds %struct.snd_wm8766, %struct.snd_wm8766* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %137 = call i32 @snd_ctl_add(i32 %135, %struct.snd_kcontrol* %136)
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %124, %121, %113
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @memset(%struct.snd_kcontrol_new*, i32, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_wm8766*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
