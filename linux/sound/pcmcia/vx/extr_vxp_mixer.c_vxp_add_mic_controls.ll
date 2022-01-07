; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_mixer.c_vxp_add_mic_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_mixer.c_vxp_add_mic_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, i32 }
%struct.snd_vxpocket = type { i64 }

@vx_control_mic_level = common dso_local global i32 0, align 4
@vx_control_mic_boost = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxp_add_mic_controls(%struct.vx_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca %struct.snd_vxpocket*, align 8
  %5 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = call %struct.snd_vxpocket* @to_vxpocket(%struct.vx_core* %6)
  store %struct.snd_vxpocket* %7, %struct.snd_vxpocket** %4, align 8
  %8 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %4, align 8
  %9 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %11 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %19 [
    i32 128, label %13
    i32 129, label %16
  ]

13:                                               ; preds = %1
  %14 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %15 = call i32 @vx_set_mic_level(%struct.vx_core* %14, i32 0)
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %18 = call i32 @vx_set_mic_boost(%struct.vx_core* %17, i32 0)
  br label %19

19:                                               ; preds = %1, %16, %13
  %20 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %21 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %45 [
    i32 128, label %23
    i32 129, label %34
  ]

23:                                               ; preds = %19
  %24 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %25 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %4, align 8
  %28 = call i32 @snd_ctl_new1(i32* @vx_control_mic_level, %struct.snd_vxpocket* %27)
  %29 = call i32 @snd_ctl_add(i32 %26, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %46

33:                                               ; preds = %23
  br label %45

34:                                               ; preds = %19
  %35 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %36 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %4, align 8
  %39 = call i32 @snd_ctl_new1(i32* @vx_control_mic_boost, %struct.snd_vxpocket* %38)
  %40 = call i32 @snd_ctl_add(i32 %37, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %19, %44, %33
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %42, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.snd_vxpocket* @to_vxpocket(%struct.vx_core*) #1

declare dso_local i32 @vx_set_mic_level(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_set_mic_boost(%struct.vx_core*, i32) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_vxpocket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
