; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_put_volsw_2r_vu.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_put_volsw_2r_vu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.wm8350_data = type { %struct.wm8350_output, %struct.wm8350_output }
%struct.wm8350_output = type { i32, i32, i32 }
%struct.soc_mixer_control = type { i32 }

@WM8350_OUT1_VU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8350_put_volsw_2r_vu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_put_volsw_2r_vu(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.wm8350_data*, align 8
  %8 = alloca %struct.wm8350_output*, align 8
  %9 = alloca %struct.soc_mixer_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %6, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %16 = call %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8350_data* %16, %struct.wm8350_data** %7, align 8
  store %struct.wm8350_output* null, %struct.wm8350_output** %8, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %20, %struct.soc_mixer_control** %9, align 8
  %21 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %9, align 8
  %22 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %31 [
    i32 129, label %25
    i32 128, label %28
  ]

25:                                               ; preds = %2
  %26 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %27 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %26, i32 0, i32 1
  store %struct.wm8350_output* %27, %struct.wm8350_output** %8, align 8
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %30 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %29, i32 0, i32 0
  store %struct.wm8350_output* %30, %struct.wm8350_output** %8, align 8
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %28, %25
  %33 = load %struct.wm8350_output*, %struct.wm8350_output** %8, align 8
  %34 = icmp ne %struct.wm8350_output* %33, null
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wm8350_output*, %struct.wm8350_output** %8, align 8
  %44 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %46 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wm8350_output*, %struct.wm8350_output** %8, align 8
  %53 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.wm8350_output*, %struct.wm8350_output** %8, align 8
  %55 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %78

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59, %32
  %61 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %62 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %63 = call i32 @snd_soc_put_volsw(%struct.snd_kcontrol* %61, %struct.snd_ctl_elem_value* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %78

68:                                               ; preds = %60
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @WM8350_OUT1_VU, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i32 %73, i32 %76)
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %68, %66, %58
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_put_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
