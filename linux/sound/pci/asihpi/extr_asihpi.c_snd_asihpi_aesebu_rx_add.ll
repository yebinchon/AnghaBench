; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_aesebu_rx_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_aesebu_rx_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card_asihpi = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.hpi_control = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@snd_asihpi_aesebu_format_info = common dso_local global i32 0, align 4
@snd_asihpi_aesebu_rx_format_get = common dso_local global i32 0, align 4
@snd_asihpi_aesebu_rx_format_put = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@SNDRV_CTL_ELEM_ACCESS_VOLATILE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_READ = common dso_local global i32 0, align 4
@snd_asihpi_aesebu_rxstatus_info = common dso_local global i32 0, align 4
@snd_asihpi_aesebu_rxstatus_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card_asihpi*, %struct.hpi_control*)* @snd_asihpi_aesebu_rx_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_asihpi_aesebu_rx_add(%struct.snd_card_asihpi* %0, %struct.hpi_control* %1) #0 {
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
  %12 = call i32 @asihpi_ctl_init(%struct.snd_kcontrol_new* %7, %struct.hpi_control* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %14 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @snd_asihpi_aesebu_format_info, align 4
  %16 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @snd_asihpi_aesebu_rx_format_get, align 4
  %18 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @snd_asihpi_aesebu_rx_format_put, align 4
  %20 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %22 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %23 = call i32 @ctl_add(%struct.snd_card* %21, %struct.snd_kcontrol_new* %7, %struct.snd_card_asihpi* %22)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %30 = call i32 @asihpi_ctl_init(%struct.snd_kcontrol_new* %7, %struct.hpi_control* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_VOLATILE, align 4
  %32 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READ, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @snd_asihpi_aesebu_rxstatus_info, align 4
  %36 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @snd_asihpi_aesebu_rxstatus_get, align 4
  %38 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %40 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %41 = call i32 @ctl_add(%struct.snd_card* %39, %struct.snd_kcontrol_new* %7, %struct.snd_card_asihpi* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %28, %25
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @asihpi_ctl_init(%struct.snd_kcontrol_new*, %struct.hpi_control*, i8*) #1

declare dso_local i32 @ctl_add(%struct.snd_card*, %struct.snd_kcontrol_new*, %struct.snd_card_asihpi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
