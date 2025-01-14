; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_level_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_level_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card_asihpi = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.hpi_control = type { i32 }
%struct.snd_kcontrol_new = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"Level\00", align 1
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4
@snd_asihpi_level_info = common dso_local global i32 0, align 4
@snd_asihpi_level_get = common dso_local global i32 0, align 4
@snd_asihpi_level_put = common dso_local global i32 0, align 4
@db_scale_level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card_asihpi*, %struct.hpi_control*)* @snd_asihpi_level_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_asihpi_level_add(%struct.snd_card_asihpi* %0, %struct.hpi_control* %1) #0 {
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
  %11 = call i32 @asihpi_ctl_init(%struct.snd_kcontrol_new* %6, %struct.hpi_control* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %13 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @snd_asihpi_level_info, align 4
  %17 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @snd_asihpi_level_get, align 4
  %19 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @snd_asihpi_level_put, align 4
  %21 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @db_scale_level, align 4
  %23 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %26 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %27 = call i32 @ctl_add(%struct.snd_card* %25, %struct.snd_kcontrol_new* %6, %struct.snd_card_asihpi* %26)
  ret i32 %27
}

declare dso_local i32 @asihpi_ctl_init(%struct.snd_kcontrol_new*, %struct.hpi_control*, i8*) #1

declare dso_local i32 @ctl_add(%struct.snd_card*, %struct.snd_kcontrol_new*, %struct.snd_card_asihpi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
