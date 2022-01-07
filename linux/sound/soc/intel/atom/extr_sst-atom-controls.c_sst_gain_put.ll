; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_gain_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_gain_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.sst_data = type { i32 }
%struct.sst_gain_mixer_control = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.sst_gain_value* }
%struct.TYPE_6__ = type { i64 }
%struct.sst_gain_value = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s: Volume %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s: Mute %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: Ramp Delay%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid Input- gain type:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @sst_gain_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_gain_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.sst_data*, align 8
  %9 = alloca %struct.sst_gain_mixer_control*, align 8
  %10 = alloca %struct.sst_gain_value*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.sst_data* %14, %struct.sst_data** %8, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.sst_gain_mixer_control*
  store %struct.sst_gain_mixer_control* %19, %struct.sst_gain_mixer_control** %9, align 8
  %20 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %21 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %20, i32 0, i32 7
  %22 = load %struct.sst_gain_value*, %struct.sst_gain_value** %21, align 8
  store %struct.sst_gain_value* %22, %struct.sst_gain_value** %10, align 8
  %23 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %24 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %27 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %104 [
    i32 128, label %29
    i32 130, label %61
    i32 129, label %84
  ]

29:                                               ; preds = %2
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sst_gain_value*, %struct.sst_gain_value** %10, align 8
  %38 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sst_gain_value*, %struct.sst_gain_value** %10, align 8
  %47 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %49 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %52 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sst_gain_value*, %struct.sst_gain_value** %10, align 8
  %55 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sst_gain_value*, %struct.sst_gain_value** %10, align 8
  %58 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %59)
  br label %117

61:                                               ; preds = %2
  %62 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %63 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load %struct.sst_gain_value*, %struct.sst_gain_value** %10, align 8
  %73 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %75 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %78 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sst_gain_value*, %struct.sst_gain_value** %10, align 8
  %81 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  br label %117

84:                                               ; preds = %2
  %85 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %86 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sst_gain_value*, %struct.sst_gain_value** %10, align 8
  %93 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %95 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %98 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sst_gain_value*, %struct.sst_gain_value** %10, align 8
  %101 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %102)
  br label %117

104:                                              ; preds = %2
  %105 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %106 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %109 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %112 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %151

117:                                              ; preds = %84, %61, %29
  %118 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %119 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %118, i32 0, i32 5
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = icmp ne %struct.TYPE_6__* %120, null
  br i1 %121, label %122, label %146

122:                                              ; preds = %117
  %123 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %124 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %123, i32 0, i32 5
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %122
  %130 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %131 = load %struct.sst_gain_value*, %struct.sst_gain_value** %10, align 8
  %132 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %133 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %136 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %139 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %137, %140
  %142 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %9, align 8
  %143 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @sst_send_gain_cmd(%struct.sst_data* %130, %struct.sst_gain_value* %131, i32 %134, i32 %141, i32 %144, i32 0)
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %129, %122, %117
  %147 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %148 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %147, i32 0, i32 0
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %146, %104
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @sst_send_gain_cmd(%struct.sst_data*, %struct.sst_gain_value*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
