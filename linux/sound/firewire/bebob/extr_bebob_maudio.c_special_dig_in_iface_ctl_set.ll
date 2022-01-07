; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_dig_in_iface_ctl_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_dig_in_iface_ctl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_bebob = type { i32, %struct.TYPE_6__*, %struct.special_params* }
%struct.TYPE_6__ = type { i32 }
%struct.special_params = type { i64, i32, i32, i32 }

@special_dig_in_iface_labels = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"fail to set digital input interface: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @special_dig_in_iface_ctl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_dig_in_iface_ctl_set(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_bebob*, align 8
  %7 = alloca %struct.special_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_bebob* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_bebob* %13, %struct.snd_bebob** %6, align 8
  %14 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %15 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %14, i32 0, i32 2
  %16 = load %struct.special_params*, %struct.special_params** %15, align 8
  store %struct.special_params* %16, %struct.special_params** %7, align 8
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @special_dig_in_iface_labels, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = icmp uge i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %84

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = lshr i32 %32, 1
  %34 = and i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %38 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %41 = load %struct.special_params*, %struct.special_params** %7, align 8
  %42 = getelementptr inbounds %struct.special_params, %struct.special_params* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.special_params*, %struct.special_params** %7, align 8
  %46 = getelementptr inbounds %struct.special_params, %struct.special_params* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.special_params*, %struct.special_params** %7, align 8
  %49 = getelementptr inbounds %struct.special_params, %struct.special_params* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @avc_maudio_set_special_clk(%struct.snd_bebob* %40, i32 %43, i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %31
  br label %77

55:                                               ; preds = %31
  %56 = load %struct.special_params*, %struct.special_params** %7, align 8
  %57 = getelementptr inbounds %struct.special_params, %struct.special_params* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %11, align 4
  br label %77

61:                                               ; preds = %55
  %62 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %63 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @avc_audio_set_selector(%struct.TYPE_6__* %64, i32 0, i32 4, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %71 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %69, %61
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %60, %54
  %78 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %79 = call i32 @special_stream_formation_set(%struct.snd_bebob* %78)
  %80 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %81 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %77, %28
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.snd_bebob* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @avc_maudio_set_special_clk(%struct.snd_bebob*, i32, i32, i32, i32) #1

declare dso_local i32 @avc_audio_set_selector(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @special_stream_formation_set(%struct.snd_bebob*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
