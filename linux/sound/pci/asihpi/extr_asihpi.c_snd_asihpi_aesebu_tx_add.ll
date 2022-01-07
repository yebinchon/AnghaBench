; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_aesebu_tx_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_aesebu_tx_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card_asihpi = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.hpi_control = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@snd_asihpi_aesebu_format_info = common dso_local global i32 0, align 4
@snd_asihpi_aesebu_tx_format_get = common dso_local global i32 0, align 4
@snd_asihpi_aesebu_tx_format_put = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card_asihpi*, %struct.hpi_control*)* @snd_asihpi_aesebu_tx_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_asihpi_aesebu_tx_add(%struct.snd_card_asihpi* %0, %struct.hpi_control* %1) #0 {
  %3 = alloca %struct.snd_card_asihpi*, align 8
  %4 = alloca %struct.hpi_control*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.snd_card_asihpi* %0, %struct.snd_card_asihpi** %3, align 8
  store %struct.hpi_control* %1, %struct.hpi_control** %4, align 8
  %7 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %8 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %7, i32 0, i32 0
  %9 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  store %struct.snd_card* %9, %struct.snd_card** %5, align 8
  %10 = load %struct.hpi_control*, %struct.hpi_control** %4, align 8
  %11 = call i32 @asihpi_ctl_init(%struct.snd_kcontrol_new* %6, %struct.hpi_control* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %13 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @snd_asihpi_aesebu_format_info, align 4
  %15 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @snd_asihpi_aesebu_tx_format_get, align 4
  %17 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @snd_asihpi_aesebu_tx_format_put, align 4
  %19 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %21 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %22 = call i32 @ctl_add(%struct.snd_card* %20, %struct.snd_kcontrol_new* %6, %struct.snd_card_asihpi* %21)
  ret i32 %22
}

declare dso_local i32 @asihpi_ctl_init(%struct.snd_kcontrol_new*, %struct.hpi_control*, i8*) #1

declare dso_local i32 @ctl_add(%struct.snd_card*, %struct.snd_kcontrol_new*, %struct.snd_card_asihpi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
