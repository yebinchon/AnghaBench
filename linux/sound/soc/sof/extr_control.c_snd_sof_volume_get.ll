; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_control.c_snd_sof_volume_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_control.c_snd_sof_volume_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.soc_mixer_control = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.snd_sof_control* }
%struct.snd_sof_control = type { i32, i32, %struct.sof_ipc_ctrl_data* }
%struct.sof_ipc_ctrl_data = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_volume_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.soc_mixer_control*, align 8
  %6 = alloca %struct.snd_sof_control*, align 8
  %7 = alloca %struct.sof_ipc_ctrl_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %13, %struct.soc_mixer_control** %5, align 8
  %14 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %15 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.snd_sof_control*, %struct.snd_sof_control** %16, align 8
  store %struct.snd_sof_control* %17, %struct.snd_sof_control** %6, align 8
  %18 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %19 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %18, i32 0, i32 2
  %20 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %19, align 8
  store %struct.sof_ipc_ctrl_data* %20, %struct.sof_ipc_ctrl_data** %7, align 8
  %21 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %22 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %53, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %7, align 8
  %30 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_sof_control*, %struct.snd_sof_control** %6, align 8
  %38 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %41 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = call i32 @ipc_to_mixer(i32 %36, i32 %39, i64 %43)
  %45 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %44, i32* %52, align 4
  br label %53

53:                                               ; preds = %28
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %24

56:                                               ; preds = %24
  ret i32 0
}

declare dso_local i32 @ipc_to_mixer(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
