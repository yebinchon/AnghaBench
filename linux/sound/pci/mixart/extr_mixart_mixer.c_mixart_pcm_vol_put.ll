; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_mixer.c_mixart_pcm_vol_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_mixer.c_mixart_pcm_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_mixart = type { i32**, i32**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@MIXART_VOL_REC_MASK = common dso_local global i32 0, align 4
@MIXART_VOL_AES_MASK = common dso_local global i32 0, align 4
@MIXART_PLAYBACK_STREAMS = common dso_local global i32 0, align 4
@MIXART_DIGITAL_LEVEL_MIN = common dso_local global i32 0, align 4
@MIXART_DIGITAL_LEVEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @mixart_pcm_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixart_pcm_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_mixart*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.snd_mixart* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_mixart* %14, %struct.snd_mixart** %5, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 1
  %18 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %15, i32* %17)
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MIXART_VOL_REC_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MIXART_VOL_AES_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %30 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %2
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %41 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %10, align 8
  br label %51

45:                                               ; preds = %36
  %46 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %47 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %10, align 8
  br label %51

51:                                               ; preds = %45, %39
  br label %79

52:                                               ; preds = %2
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MIXART_PLAYBACK_STREAMS, align 4
  %55 = icmp sge i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @snd_BUG_ON(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %62 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* @MIXART_PLAYBACK_STREAMS, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %63, i64 %67
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %10, align 8
  br label %78

70:                                               ; preds = %52
  %71 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %72 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %71, i32 0, i32 1
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %10, align 8
  br label %78

78:                                               ; preds = %70, %60
  br label %79

79:                                               ; preds = %78, %51
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %116, %79
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 2
  br i1 %82, label %83, label %119

83:                                               ; preds = %80
  %84 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %85 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @MIXART_DIGITAL_LEVEL_MIN, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %83
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @MIXART_DIGITAL_LEVEL_MAX, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %83
  br label %116

101:                                              ; preds = %96
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  store i32 1, i32* %7, align 4
  br label %115

115:                                              ; preds = %109, %101
  br label %116

116:                                              ; preds = %115, %100
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %80

119:                                              ; preds = %80
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @mixart_update_capture_stream_level(%struct.snd_mixart* %126, i32 %127)
  br label %134

129:                                              ; preds = %122
  %130 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @mixart_update_playback_stream_level(%struct.snd_mixart* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %125
  br label %135

135:                                              ; preds = %134, %119
  %136 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %137 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local %struct.snd_mixart* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @mixart_update_capture_stream_level(%struct.snd_mixart*, i32) #1

declare dso_local i32 @mixart_update_playback_stream_level(%struct.snd_mixart*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
