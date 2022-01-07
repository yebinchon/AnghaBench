; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_control.c_snd_sof_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_control.c_snd_sof_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }
%struct.soc_mixer_control = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.snd_sof_control* }
%struct.snd_sof_control = type { i32, %struct.sof_ipc_ctrl_data*, %struct.snd_sof_dev* }
%struct.sof_ipc_ctrl_data = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.snd_sof_dev = type { i32, i32 }

@SOF_IPC_COMP_SET_VALUE = common dso_local global i32 0, align 4
@SOF_CTRL_TYPE_VALUE_CHAN_GET = common dso_local global i32 0, align 4
@SOF_CTRL_CMD_SWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %18 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.snd_sof_control*, %struct.snd_sof_control** %19, align 8
  store %struct.snd_sof_control* %20, %struct.snd_sof_control** %6, align 8
  %21 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %22 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %21, i32 0, i32 2
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %22, align 8
  store %struct.snd_sof_dev* %23, %struct.snd_sof_dev** %7, align 8
  %24 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %25 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %24, i32 0, i32 1
  %26 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %25, align 8
  store %struct.sof_ipc_ctrl_data* %26, %struct.sof_ipc_ctrl_data** %8, align 8
  %27 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %28 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %76, %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %30
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %34
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %8, align 8
  %49 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %47, %55
  br label %57

57:                                               ; preds = %46, %34
  %58 = phi i1 [ true, %34 ], [ %56, %46 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %8, align 8
  %62 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i32 %60, i32* %67, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %8, align 8
  %70 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i64 %68, i64* %75, align 8
  br label %76

76:                                               ; preds = %57
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %30

79:                                               ; preds = %30
  %80 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %81 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @pm_runtime_active(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %87 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %90 = load i32, i32* @SOF_IPC_COMP_SET_VALUE, align 4
  %91 = load i32, i32* @SOF_CTRL_TYPE_VALUE_CHAN_GET, align 4
  %92 = load i32, i32* @SOF_CTRL_CMD_SWITCH, align 4
  %93 = call i32 @snd_sof_ipc_set_get_comp_data(i32 %88, %struct.snd_sof_control* %89, i32 %90, i32 %91, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %85, %79
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local i64 @pm_runtime_active(i32) #1

declare dso_local i32 @snd_sof_ipc_set_get_comp_data(i32, %struct.snd_sof_control*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
