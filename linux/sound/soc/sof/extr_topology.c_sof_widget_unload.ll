; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_widget_unload.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_widget_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dobj = type { %struct.TYPE_5__, %struct.sof_ipc_pipe_new* }
%struct.TYPE_5__ = type { i32 }
%struct.sof_ipc_pipe_new = type { i32, i32, i32, %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new*, %struct.snd_soc_dapm_widget* }
%struct.snd_soc_dapm_widget = type { i32, %struct.snd_kcontrol_new* }
%struct.snd_kcontrol_new = type { i64 }
%struct.snd_sof_dev = type { i32, i32 }
%struct.snd_sof_control = type { i32, i32, i32, %struct.snd_sof_control*, %struct.snd_sof_control*, %struct.snd_sof_control*, %struct.snd_sof_control*, %struct.snd_soc_dapm_widget* }
%struct.snd_sof_widget = type { i32, i32, i32, %struct.snd_sof_widget*, %struct.snd_sof_widget*, %struct.snd_sof_widget*, %struct.snd_sof_widget*, %struct.snd_soc_dapm_widget* }
%struct.soc_mixer_control = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sof_ipc_pipe_new* }
%struct.soc_bytes_ext = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.sof_ipc_pipe_new* }
%struct.snd_sof_dai = type { i32, i32, i32, %struct.snd_sof_dai*, %struct.snd_sof_dai*, %struct.snd_sof_dai*, %struct.snd_sof_dai*, %struct.snd_soc_dapm_widget* }
%struct.soc_enum = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.sof_ipc_pipe_new* }

@.str = private unnamed_addr constant [48 x i8] c"error: powering down pipeline schedule core %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unsupported kcontrol_type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_soc_dobj*)* @sof_widget_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_widget_unload(%struct.snd_soc_component* %0, %struct.snd_soc_dobj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_dobj*, align 8
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca %struct.snd_kcontrol_new*, align 8
  %8 = alloca %struct.snd_soc_dapm_widget*, align 8
  %9 = alloca %struct.sof_ipc_pipe_new*, align 8
  %10 = alloca %struct.snd_sof_control*, align 8
  %11 = alloca %struct.snd_sof_widget*, align 8
  %12 = alloca %struct.soc_mixer_control*, align 8
  %13 = alloca %struct.soc_bytes_ext*, align 8
  %14 = alloca %struct.snd_sof_dai*, align 8
  %15 = alloca %struct.soc_enum*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_dobj* %1, %struct.snd_soc_dobj** %5, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %19 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.snd_sof_dev* %19, %struct.snd_sof_dev** %6, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.snd_soc_dobj*, %struct.snd_soc_dobj** %5, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dobj, %struct.snd_soc_dobj* %20, i32 0, i32 1
  %22 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %21, align 8
  %23 = bitcast %struct.sof_ipc_pipe_new* %22 to %struct.snd_sof_widget*
  store %struct.snd_sof_widget* %23, %struct.snd_sof_widget** %11, align 8
  %24 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %25 = icmp ne %struct.snd_sof_widget* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %176

27:                                               ; preds = %2
  %28 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %29 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %28, i32 0, i32 7
  %30 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %29, align 8
  store %struct.snd_soc_dapm_widget* %30, %struct.snd_soc_dapm_widget** %8, align 8
  %31 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %32 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %82 [
    i32 130, label %34
    i32 129, label %34
    i32 128, label %51
  ]

34:                                               ; preds = %27, %27
  %35 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %36 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %35, i32 0, i32 3
  %37 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %36, align 8
  %38 = bitcast %struct.snd_sof_widget* %37 to %struct.snd_sof_dai*
  store %struct.snd_sof_dai* %38, %struct.snd_sof_dai** %14, align 8
  %39 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %14, align 8
  %40 = icmp ne %struct.snd_sof_dai* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %14, align 8
  %43 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %42, i32 0, i32 6
  %44 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %43, align 8
  %45 = bitcast %struct.snd_sof_dai* %44 to %struct.sof_ipc_pipe_new*
  %46 = call i32 @kfree(%struct.sof_ipc_pipe_new* %45)
  %47 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %14, align 8
  %48 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %47, i32 0, i32 2
  %49 = call i32 @list_del(i32* %48)
  br label %50

50:                                               ; preds = %41, %34
  br label %83

51:                                               ; preds = %27
  %52 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %53 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %52, i32 0, i32 3
  %54 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %53, align 8
  %55 = bitcast %struct.snd_sof_widget* %54 to %struct.sof_ipc_pipe_new*
  store %struct.sof_ipc_pipe_new* %55, %struct.sof_ipc_pipe_new** %9, align 8
  %56 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %57 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %9, align 8
  %58 = getelementptr inbounds %struct.sof_ipc_pipe_new, %struct.sof_ipc_pipe_new* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 1, %59
  %61 = call i32 @snd_sof_dsp_core_power_down(%struct.snd_sof_dev* %56, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %51
  %65 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %66 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %9, align 8
  %69 = getelementptr inbounds %struct.sof_ipc_pipe_new, %struct.sof_ipc_pipe_new* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %64, %51
  %73 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %9, align 8
  %74 = getelementptr inbounds %struct.sof_ipc_pipe_new, %struct.sof_ipc_pipe_new* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 1, %75
  %77 = xor i32 %76, -1
  %78 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %79 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %83

82:                                               ; preds = %27
  br label %83

83:                                               ; preds = %82, %72, %50
  store i32 0, i32* %17, align 4
  br label %84

84:                                               ; preds = %159, %83
  %85 = load i32, i32* %17, align 4
  %86 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %162

90:                                               ; preds = %84
  %91 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %92 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %91, i32 0, i32 1
  %93 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %93, i64 %95
  store %struct.snd_kcontrol_new* %96, %struct.snd_kcontrol_new** %7, align 8
  %97 = load %struct.snd_soc_dobj*, %struct.snd_soc_dobj** %5, align 8
  %98 = getelementptr inbounds %struct.snd_soc_dobj, %struct.snd_soc_dobj* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %142 [
    i32 131, label %101
    i32 132, label %122
    i32 133, label %132
  ]

101:                                              ; preds = %90
  %102 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %103 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %105, %struct.soc_mixer_control** %12, align 8
  %106 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %12, align 8
  %107 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %108, align 8
  %110 = bitcast %struct.sof_ipc_pipe_new* %109 to %struct.snd_sof_control*
  store %struct.snd_sof_control* %110, %struct.snd_sof_control** %10, align 8
  %111 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %12, align 8
  %112 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %121

115:                                              ; preds = %101
  %116 = load %struct.snd_sof_control*, %struct.snd_sof_control** %10, align 8
  %117 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %116, i32 0, i32 5
  %118 = load %struct.snd_sof_control*, %struct.snd_sof_control** %117, align 8
  %119 = bitcast %struct.snd_sof_control* %118 to %struct.sof_ipc_pipe_new*
  %120 = call i32 @kfree(%struct.sof_ipc_pipe_new* %119)
  br label %121

121:                                              ; preds = %115, %101
  br label %147

122:                                              ; preds = %90
  %123 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %124 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.soc_enum*
  store %struct.soc_enum* %126, %struct.soc_enum** %15, align 8
  %127 = load %struct.soc_enum*, %struct.soc_enum** %15, align 8
  %128 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %129, align 8
  %131 = bitcast %struct.sof_ipc_pipe_new* %130 to %struct.snd_sof_control*
  store %struct.snd_sof_control* %131, %struct.snd_sof_control** %10, align 8
  br label %147

132:                                              ; preds = %90
  %133 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %134 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %136, %struct.soc_bytes_ext** %13, align 8
  %137 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %13, align 8
  %138 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %139, align 8
  %141 = bitcast %struct.sof_ipc_pipe_new* %140 to %struct.snd_sof_control*
  store %struct.snd_sof_control* %141, %struct.snd_sof_control** %10, align 8
  br label %147

142:                                              ; preds = %90
  %143 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %144 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dev_warn(i32 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %163

147:                                              ; preds = %132, %122, %121
  %148 = load %struct.snd_sof_control*, %struct.snd_sof_control** %10, align 8
  %149 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %148, i32 0, i32 4
  %150 = load %struct.snd_sof_control*, %struct.snd_sof_control** %149, align 8
  %151 = bitcast %struct.snd_sof_control* %150 to %struct.sof_ipc_pipe_new*
  %152 = call i32 @kfree(%struct.sof_ipc_pipe_new* %151)
  %153 = load %struct.snd_sof_control*, %struct.snd_sof_control** %10, align 8
  %154 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %153, i32 0, i32 2
  %155 = call i32 @list_del(i32* %154)
  %156 = load %struct.snd_sof_control*, %struct.snd_sof_control** %10, align 8
  %157 = bitcast %struct.snd_sof_control* %156 to %struct.sof_ipc_pipe_new*
  %158 = call i32 @kfree(%struct.sof_ipc_pipe_new* %157)
  br label %159

159:                                              ; preds = %147
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %17, align 4
  br label %84

162:                                              ; preds = %84
  br label %163

163:                                              ; preds = %162, %142
  %164 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %165 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %164, i32 0, i32 3
  %166 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %165, align 8
  %167 = bitcast %struct.snd_sof_widget* %166 to %struct.sof_ipc_pipe_new*
  %168 = call i32 @kfree(%struct.sof_ipc_pipe_new* %167)
  %169 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %170 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %169, i32 0, i32 2
  %171 = call i32 @list_del(i32* %170)
  %172 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %173 = bitcast %struct.snd_sof_widget* %172 to %struct.sof_ipc_pipe_new*
  %174 = call i32 @kfree(%struct.sof_ipc_pipe_new* %173)
  %175 = load i32, i32* %16, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %163, %26
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @kfree(%struct.sof_ipc_pipe_new*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @snd_sof_dsp_core_power_down(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
