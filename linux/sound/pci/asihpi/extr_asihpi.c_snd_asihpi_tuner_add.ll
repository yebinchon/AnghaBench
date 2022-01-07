; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_tuner_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_tuner_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card_asihpi = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.hpi_control = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, i32, i32 }

@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Gain\00", align 1
@snd_asihpi_tuner_gain_info = common dso_local global i32 0, align 4
@snd_asihpi_tuner_gain_get = common dso_local global i32 0, align 4
@snd_asihpi_tuner_gain_put = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Band\00", align 1
@snd_asihpi_tuner_band_info = common dso_local global i32 0, align 4
@snd_asihpi_tuner_band_get = common dso_local global i32 0, align 4
@snd_asihpi_tuner_band_put = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Freq\00", align 1
@snd_asihpi_tuner_freq_info = common dso_local global i32 0, align 4
@snd_asihpi_tuner_freq_get = common dso_local global i32 0, align 4
@snd_asihpi_tuner_freq_put = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card_asihpi*, %struct.hpi_control*)* @snd_asihpi_tuner_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_asihpi_tuner_add(%struct.snd_card_asihpi* %0, %struct.hpi_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card_asihpi*, align 8
  %5 = alloca %struct.hpi_control*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.snd_card_asihpi* %0, %struct.snd_card_asihpi** %4, align 8
  store %struct.hpi_control* %1, %struct.hpi_control** %5, align 8
  %8 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %9 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %8, i32 0, i32 0
  %10 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  store %struct.snd_card* %10, %struct.snd_card** %6, align 8
  %11 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %12 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %16 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %18 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hpi_tuner_get_gain(i32 %19, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %2
  %23 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %24 = call i32 @asihpi_ctl_init(%struct.snd_kcontrol_new* %7, %struct.hpi_control* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @snd_asihpi_tuner_gain_info, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @snd_asihpi_tuner_gain_get, align 4
  %28 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @snd_asihpi_tuner_gain_put, align 4
  %30 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %32 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %33 = call i32 @ctl_add(%struct.snd_card* %31, %struct.snd_kcontrol_new* %7, %struct.snd_card_asihpi* %32)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %67

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %41 = call i32 @asihpi_ctl_init(%struct.snd_kcontrol_new* %7, %struct.hpi_control* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @snd_asihpi_tuner_band_info, align 4
  %43 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @snd_asihpi_tuner_band_get, align 4
  %45 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @snd_asihpi_tuner_band_put, align 4
  %47 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %49 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %50 = call i32 @ctl_add(%struct.snd_card* %48, %struct.snd_kcontrol_new* %7, %struct.snd_card_asihpi* %49)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %67

55:                                               ; preds = %39
  %56 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %57 = call i32 @asihpi_ctl_init(%struct.snd_kcontrol_new* %7, %struct.hpi_control* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @snd_asihpi_tuner_freq_info, align 4
  %59 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @snd_asihpi_tuner_freq_get, align 4
  %61 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @snd_asihpi_tuner_freq_put, align 4
  %63 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %65 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %66 = call i32 @ctl_add(%struct.snd_card* %64, %struct.snd_kcontrol_new* %7, %struct.snd_card_asihpi* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %55, %52, %35
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @hpi_tuner_get_gain(i32, i32*) #1

declare dso_local i32 @asihpi_ctl_init(%struct.snd_kcontrol_new*, %struct.hpi_control*, i8*) #1

declare dso_local i32 @ctl_add(%struct.snd_card*, %struct.snd_kcontrol_new*, %struct.snd_card_asihpi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
