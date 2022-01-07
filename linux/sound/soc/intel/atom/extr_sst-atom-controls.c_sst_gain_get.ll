; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_gain_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_gain_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.sst_gain_mixer_control = type { i32, %struct.sst_gain_value* }
%struct.sst_gain_value = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid Input- gain type:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @sst_gain_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_gain_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.sst_gain_mixer_control*, align 8
  %8 = alloca %struct.sst_gain_value*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.sst_gain_mixer_control*
  store %struct.sst_gain_mixer_control* %15, %struct.sst_gain_mixer_control** %7, align 8
  %16 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %7, align 8
  %17 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %16, i32 0, i32 1
  %18 = load %struct.sst_gain_value*, %struct.sst_gain_value** %17, align 8
  store %struct.sst_gain_value* %18, %struct.sst_gain_value** %8, align 8
  %19 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %7, align 8
  %20 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %64 [
    i32 128, label %22
    i32 130, label %41
    i32 129, label %54
  ]

22:                                               ; preds = %2
  %23 = load %struct.sst_gain_value*, %struct.sst_gain_value** %8, align 8
  %24 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %25, i32* %31, align 4
  %32 = load %struct.sst_gain_value*, %struct.sst_gain_value** %8, align 8
  %33 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %34, i32* %40, align 4
  br label %74

41:                                               ; preds = %2
  %42 = load %struct.sst_gain_value*, %struct.sst_gain_value** %8, align 8
  %43 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 1
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %49 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %47, i32* %53, align 4
  br label %74

54:                                               ; preds = %2
  %55 = load %struct.sst_gain_value*, %struct.sst_gain_value** %8, align 8
  %56 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %57, i32* %63, align 4
  br label %74

64:                                               ; preds = %2
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %66 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sst_gain_mixer_control*, %struct.sst_gain_mixer_control** %7, align 8
  %69 = getelementptr inbounds %struct.sst_gain_mixer_control, %struct.sst_gain_mixer_control* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %54, %41, %22
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
