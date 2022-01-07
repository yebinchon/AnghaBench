; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_mixer_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_mixer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hal2 = type { i32 }

@H2I_DAC_C2 = common dso_local global i32 0, align 4
@H2I_C2_L_ATT_M = common dso_local global i32 0, align 4
@H2I_C2_R_ATT_M = common dso_local global i32 0, align 4
@H2I_C2_MUTE = common dso_local global i32 0, align 4
@H2I_ADC_C2 = common dso_local global i32 0, align 4
@hal2_ctrl_headphone = common dso_local global i32 0, align 4
@hal2_ctrl_mic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hal2*)* @hal2_mixer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal2_mixer_create(%struct.snd_hal2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_hal2*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_hal2* %0, %struct.snd_hal2** %3, align 8
  %5 = load %struct.snd_hal2*, %struct.snd_hal2** %3, align 8
  %6 = load i32, i32* @H2I_DAC_C2, align 4
  %7 = load i32, i32* @H2I_C2_L_ATT_M, align 4
  %8 = load i32, i32* @H2I_C2_R_ATT_M, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @H2I_C2_MUTE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @hal2_i_write32(%struct.snd_hal2* %5, i32 %6, i32 %11)
  %13 = load %struct.snd_hal2*, %struct.snd_hal2** %3, align 8
  %14 = load i32, i32* @H2I_ADC_C2, align 4
  %15 = call i32 @hal2_i_write32(%struct.snd_hal2* %13, i32 %14, i32 0)
  %16 = load %struct.snd_hal2*, %struct.snd_hal2** %3, align 8
  %17 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_hal2*, %struct.snd_hal2** %3, align 8
  %20 = call i32 @snd_ctl_new1(i32* @hal2_ctrl_headphone, %struct.snd_hal2* %19)
  %21 = call i32 @snd_ctl_add(i32 %18, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %1
  %27 = load %struct.snd_hal2*, %struct.snd_hal2** %3, align 8
  %28 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_hal2*, %struct.snd_hal2** %3, align 8
  %31 = call i32 @snd_ctl_new1(i32* @hal2_ctrl_mic, %struct.snd_hal2* %30)
  %32 = call i32 @snd_ctl_add(i32 %29, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %35, %24
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @hal2_i_write32(%struct.snd_hal2*, i32, i32) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_hal2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
