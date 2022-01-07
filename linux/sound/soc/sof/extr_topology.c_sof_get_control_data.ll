; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_get_control_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_get_control_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.snd_soc_dapm_widget = type { i32, i32, %struct.TYPE_13__, %struct.snd_kcontrol_new* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.snd_kcontrol_new = type { i64 }
%struct.sof_widget_data = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.soc_mixer_control = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_16__* }
%struct.soc_bytes_ext = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.soc_enum = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_16__* }

@.str = private unnamed_addr constant [46 x i8] c"error: unknown kcontrol type %d in widget %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"error: no scontrol for widget %s\0A\00", align 1
@SOF_ABI_MAGIC = common dso_local global i64 0, align 8
@SOF_IPC_COMP_SET_VALUE = common dso_local global i32 0, align 4
@SOF_CTRL_TYPE_VALUE_CHAN_SET = common dso_local global i32 0, align 4
@SOF_IPC_COMP_SET_DATA = common dso_local global i32 0, align 4
@SOF_CTRL_TYPE_DATA_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, %struct.snd_soc_dapm_widget*, %struct.sof_widget_data*, i64*)* @sof_get_control_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_get_control_data(%struct.snd_sof_dev* %0, %struct.snd_soc_dapm_widget* %1, %struct.sof_widget_data* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca %struct.snd_soc_dapm_widget*, align 8
  %8 = alloca %struct.sof_widget_data*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.snd_kcontrol_new*, align 8
  %11 = alloca %struct.soc_mixer_control*, align 8
  %12 = alloca %struct.soc_bytes_ext*, align 8
  %13 = alloca %struct.soc_enum*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %6, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %7, align 8
  store %struct.sof_widget_data* %2, %struct.sof_widget_data** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i64*, i64** %9, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %197, %4
  %17 = load i32, i32* %14, align 4
  %18 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %200

22:                                               ; preds = %16
  %23 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %23, i32 0, i32 3
  %25 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %24, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %25, i64 %27
  store %struct.snd_kcontrol_new* %28, %struct.snd_kcontrol_new** %10, align 8
  %29 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %76 [
    i32 132, label %34
    i32 134, label %48
    i32 133, label %62
  ]

34:                                               ; preds = %22
  %35 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %38, %struct.soc_mixer_control** %11, align 8
  %39 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %11, align 8
  %40 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %43, i64 %45
  %47 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %46, i32 0, i32 2
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %47, align 8
  br label %91

48:                                               ; preds = %22
  %49 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %52, %struct.soc_bytes_ext** %12, align 8
  %53 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %12, align 8
  %54 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %57, i64 %59
  %61 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %60, i32 0, i32 2
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %61, align 8
  br label %91

62:                                               ; preds = %22
  %63 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %64 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.soc_enum*
  store %struct.soc_enum* %66, %struct.soc_enum** %13, align 8
  %67 = load %struct.soc_enum*, %struct.soc_enum** %13, align 8
  %68 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %71, i64 %73
  %75 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %74, i32 0, i32 2
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %75, align 8
  br label %91

76:                                               ; preds = %22
  %77 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %78 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %81 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %86 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %201

91:                                               ; preds = %62, %48, %34
  %92 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %92, i64 %94
  %96 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %95, i32 0, i32 2
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = icmp ne %struct.TYPE_16__* %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %91
  %100 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %101 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %104 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %201

109:                                              ; preds = %91
  %110 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %110, i64 %112
  %114 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %113, i32 0, i32 2
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %120, i64 %122
  %124 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %123, i32 0, i32 3
  store %struct.TYPE_15__* %119, %struct.TYPE_15__** %124, align 8
  %125 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %125, i64 %127
  %129 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %128, i32 0, i32 3
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = icmp ne %struct.TYPE_15__* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %109
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %201

135:                                              ; preds = %109
  %136 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %136, i64 %138
  %140 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %139, i32 0, i32 3
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @SOF_ABI_MAGIC, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %135
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %201

149:                                              ; preds = %135
  %150 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %150, i64 %152
  %154 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %153, i32 0, i32 3
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %9, align 8
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, %157
  store i64 %160, i64* %158, align 8
  %161 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %161, i64 %163
  %165 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %164, i32 0, i32 2
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  switch i32 %168, label %195 [
    i32 128, label %169
    i32 130, label %169
    i32 129, label %169
    i32 131, label %182
  ]

169:                                              ; preds = %149, %149, %149
  %170 = load i32, i32* @SOF_IPC_COMP_SET_VALUE, align 4
  %171 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %171, i64 %173
  %175 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %174, i32 0, i32 1
  store i32 %170, i32* %175, align 4
  %176 = load i32, i32* @SOF_CTRL_TYPE_VALUE_CHAN_SET, align 4
  %177 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %177, i64 %179
  %181 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %180, i32 0, i32 0
  store i32 %176, i32* %181, align 8
  br label %196

182:                                              ; preds = %149
  %183 = load i32, i32* @SOF_IPC_COMP_SET_DATA, align 4
  %184 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %184, i64 %186
  %188 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %187, i32 0, i32 1
  store i32 %183, i32* %188, align 4
  %189 = load i32, i32* @SOF_CTRL_TYPE_DATA_SET, align 4
  %190 = load %struct.sof_widget_data*, %struct.sof_widget_data** %8, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %190, i64 %192
  %194 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %193, i32 0, i32 0
  store i32 %189, i32* %194, align 8
  br label %196

195:                                              ; preds = %149
  br label %196

196:                                              ; preds = %195, %182, %169
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %14, align 4
  br label %16

200:                                              ; preds = %16
  store i32 0, i32* %5, align 4
  br label %201

201:                                              ; preds = %200, %146, %132, %99, %76
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
