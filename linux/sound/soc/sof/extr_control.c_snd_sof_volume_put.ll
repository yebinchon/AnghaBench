; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_control.c_snd_sof_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_control.c_snd_sof_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.soc_mixer_control = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.snd_sof_control* }
%struct.snd_sof_control = type { i32, i32, %struct.sof_ipc_ctrl_data*, %struct.snd_sof_dev* }
%struct.sof_ipc_ctrl_data = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.snd_sof_dev = type { i32, i32 }

@SOF_IPC_COMP_SET_VALUE = common dso_local global i32 0, align 4
@SOF_CTRL_TYPE_VALUE_CHAN_GET = common dso_local global i32 0, align 4
@SOF_CTRL_CMD_VOLUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.soc_mixer_control*, align 8
  %6 = alloca %struct.snd_sof_control*, align 8
  %7 = alloca %struct.snd_sof_dev*, align 8
  %8 = alloca %struct.sof_ipc_ctrl_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %16, %struct.soc_mixer_control** %5, align 8
  %17 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %18 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.snd_sof_control*, %struct.snd_sof_control** %19, align 8
  store %struct.snd_sof_control* %20, %struct.snd_sof_control** %6, align 8
  %21 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %22 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %21, i32 0, i32 3
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %22, align 8
  store %struct.snd_sof_dev* %23, %struct.snd_sof_dev** %7, align 8
  %24 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %25 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %24, i32 0, i32 2
  %26 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %25, align 8
  store %struct.sof_ipc_ctrl_data* %26, %struct.sof_ipc_ctrl_data** %8, align 8
  %27 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %28 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %84, %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %30
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %45 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %48 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i64 @mixer_to_ipc(i32 %43, i32 %46, i64 %50)
  store i64 %51, i64* %12, align 8
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %34
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %8, align 8
  %57 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %55, %63
  br label %65

65:                                               ; preds = %54, %34
  %66 = phi i1 [ true, %34 ], [ %64, %54 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %8, align 8
  %70 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 %68, i32* %75, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %8, align 8
  %78 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i64 %76, i64* %83, align 8
  br label %84

84:                                               ; preds = %65
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %30

87:                                               ; preds = %30
  %88 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %89 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @pm_runtime_active(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %95 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %98 = load i32, i32* @SOF_IPC_COMP_SET_VALUE, align 4
  %99 = load i32, i32* @SOF_CTRL_TYPE_VALUE_CHAN_GET, align 4
  %100 = load i32, i32* @SOF_CTRL_CMD_VOLUME, align 4
  %101 = call i32 @snd_sof_ipc_set_get_comp_data(i32 %96, %struct.snd_sof_control* %97, i32 %98, i32 %99, i32 %100, i32 1)
  br label %102

102:                                              ; preds = %93, %87
  %103 = load i32, i32* %11, align 4
  ret i32 %103
}

declare dso_local i64 @mixer_to_ipc(i32, i32, i64) #1

declare dso_local i64 @pm_runtime_active(i32) #1

declare dso_local i32 @snd_sof_ipc_set_get_comp_data(i32, %struct.snd_sof_control*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
