; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_mixer.c_ac97_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_mixer.c_ac97_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, %struct.oxygen* }
%struct.oxygen = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.oxygen*, i32, i32)* }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@AC97_LINE = common dso_local global i32 0, align 4
@CM9780_GPIO_STATUS = common dso_local global i32 0, align 4
@CM9780_GPO0 = common dso_local global i32 0, align 4
@CONTROL_MIC_CAPTURE_SWITCH = common dso_local global i32 0, align 4
@CONTROL_CD_CAPTURE_SWITCH = common dso_local global i32 0, align 4
@CONTROL_AUX_CAPTURE_SWITCH = common dso_local global i32 0, align 4
@AC97_MIC = common dso_local global i32 0, align 4
@AC97_CD = common dso_local global i32 0, align 4
@AC97_VIDEO = common dso_local global i32 0, align 4
@AC97_AUX = common dso_local global i32 0, align 4
@CONTROL_LINE_CAPTURE_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ac97_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 1
  %15 = load %struct.oxygen*, %struct.oxygen** %14, align 8
  store %struct.oxygen* %15, %struct.oxygen** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 24
  %20 = and i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  store i32 %29, i32* %8, align 4
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 65536
  store i32 %33, i32* %9, align 4
  %34 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %35 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @oxygen_read_ac97(%struct.oxygen* %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = xor i32 %51, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %2
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %69

63:                                               ; preds = %2
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %165

76:                                               ; preds = %69
  %77 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @oxygen_write_ac97(%struct.oxygen* %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %76
  %85 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %86 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32 (%struct.oxygen*, i32, i32)*, i32 (%struct.oxygen*, i32, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.oxygen*, i32, i32)* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %92 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32 (%struct.oxygen*, i32, i32)*, i32 (%struct.oxygen*, i32, i32)** %93, align 8
  %95 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, 32768
  %99 = call i32 %94(%struct.oxygen* %95, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %90, %84, %76
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @AC97_LINE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %131

104:                                              ; preds = %100
  %105 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %106 = load i32, i32* @CM9780_GPIO_STATUS, align 4
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %107, 32768
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @CM9780_GPO0, align 4
  br label %113

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  %115 = load i32, i32* @CM9780_GPO0, align 4
  %116 = call i32 @oxygen_write_ac97_masked(%struct.oxygen* %105, i32 0, i32 %106, i32 %114, i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %117, 32768
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %113
  %121 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %122 = load i32, i32* @CONTROL_MIC_CAPTURE_SWITCH, align 4
  %123 = call i32 @mute_ac97_ctl(%struct.oxygen* %121, i32 %122)
  %124 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %125 = load i32, i32* @CONTROL_CD_CAPTURE_SWITCH, align 4
  %126 = call i32 @mute_ac97_ctl(%struct.oxygen* %124, i32 %125)
  %127 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %128 = load i32, i32* @CONTROL_AUX_CAPTURE_SWITCH, align 4
  %129 = call i32 @mute_ac97_ctl(%struct.oxygen* %127, i32 %128)
  br label %130

130:                                              ; preds = %120, %113
  br label %164

131:                                              ; preds = %100
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @AC97_MIC, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %147, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @AC97_CD, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %147, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @AC97_VIDEO, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @AC97_AUX, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %143, %139, %135, %131
  %148 = load i32, i32* %8, align 4
  %149 = icmp eq i32 %148, 15
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load i32, i32* %11, align 4
  %152 = and i32 %151, 32768
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %150
  %155 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %156 = load i32, i32* @CONTROL_LINE_CAPTURE_SWITCH, align 4
  %157 = call i32 @mute_ac97_ctl(%struct.oxygen* %155, i32 %156)
  %158 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %159 = load i32, i32* @CM9780_GPIO_STATUS, align 4
  %160 = load i32, i32* @CM9780_GPO0, align 4
  %161 = load i32, i32* @CM9780_GPO0, align 4
  %162 = call i32 @oxygen_write_ac97_masked(%struct.oxygen* %158, i32 0, i32 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %154, %150, %147, %143
  br label %164

164:                                              ; preds = %163, %130
  br label %165

165:                                              ; preds = %164, %69
  %166 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %167 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %166, i32 0, i32 0
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load i32, i32* %12, align 4
  ret i32 %169
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @oxygen_read_ac97(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_write_ac97(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @oxygen_write_ac97_masked(%struct.oxygen*, i32, i32, i32, i32) #1

declare dso_local i32 @mute_ac97_ctl(%struct.oxygen*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
